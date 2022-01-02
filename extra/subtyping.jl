using Test
using Random

import Base.isless

struct Card
  suit::Int64
  rank::Int64
  function Card(suit::Int64, rank::Int64)
    @assert(1 <= suit <= 4, "suit is not between 1 and 4")
    @assert(1 <= rank <= 13, "rank is not between 1 and 13")
    new(suit, rank)
  end
end

# enum
const suitNames = ["♣", "♢", "♡", "♠"]
const rankNames = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

# toString
function Base.show(io::IO, card::Card)
  print(io, rankNames[card.rank], suitNames[card.suit])
end

# compareTo
function isless(c1::Card, c2::Card)
  (c1.suit, c1.rank) < (c2.suit, c2.rank)
end

@test Card(4, 2) > Card(1, 9)
@test Card(1, 1) == Card(1, 1)

abstract type CardSet end

function Base.show(io::IO, cs::CardSet)
  for card in cs.cards
    print(io, card, " ")
  end
end

function Base.pop!(cs::CardSet)
  pop!(cs.cards)
end

function Base.push!(cs::CardSet, card::Card)
  push!(cs.cards, card)
  nothing
end

struct Deck <: CardSet
  cards::Array{Card, 1}
end

function Deck()
  deck = Deck(Card[])
  for suit in 1:4
    for rank in 1:13
      push!(deck.cards, Card(suit, rank))
    end
  end
  deck
end

function Random.shuffle!(deck::Deck)
  shuffle!(deck.cards)
end

struct Hand <: CardSet
  cards::Array{Card, 1}
  label::String
end

function Hand(label::String="")
  Hand(Card[], label)
end

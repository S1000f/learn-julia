module MyModule
  export exportedMethod

  function exportedMethod()
    println("exported method")
  end

  function notExportedMethod()
    println("not exported method")
  end

end
  cd(@__DIR__)
  using Pkg
  pkg"activate ."

  function main()
    include("GenieBookShelf.jl")
  end

  main()

module GenieBookShelf

using Genie, Genie.Router, Genie.Renderer, Genie.AppServer

function main()
  Base.eval(Main, :(const UserApp = GenieBookShelf))

  include("genie.jl")

  Base.eval(Main, :(const Genie = GenieBookShelf.Genie))
  Base.eval(Main, :(using Genie))
end

main()

end

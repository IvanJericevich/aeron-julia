# Wrap the functions defined in C++
module CppHello
  using CxxWrap
  @wrapmodule(joinpath("build", "binding_test"))

  function __init__()
    @initcxx
  end
end

using Test

# Output:
@show CppHello.greet()

@testset "$(basename(@__FILE__)[1:end-3])" begin

# Test the result
@test CppHello.greet() == "hello, world"

end
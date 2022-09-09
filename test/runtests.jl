using PlutoWind
using Test

@testset "PlutoWind.jl" begin
    
    @test PlutoWind.greet_your_package_name() == "Hello YourPackageName!"
    @test PlutoWind.greet_your_package_name() != "Hello world!"

end

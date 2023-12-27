using SeasonalNaive
using Test

@testset "SeasonalNaive.jl" begin
    @testset "forecast season 120" begin
        past_data = rand(120)
        forecasted = forecast(past_data, 120, 120)
        @test past_data == forecasted
    end
    @testset "forecast season 12" begin
        past_data = rand(60)
        forecasted = forecast(past_data, 12, 12)
        @test past_data[end-11: end] == forecasted
    end
    @testset "forecast season 13" begin
        past_data = rand(60)
        forecasted = forecast(past_data, 13, 26)
        @test [past_data[end-12: end]; past_data[end-12: end]] == forecasted
    end
end

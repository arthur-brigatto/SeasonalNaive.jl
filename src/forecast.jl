function forecast(past_data::Vector{Float64}, seasonality::Int64, steps_ahead::Int64)
    
    forecasts = zeros(steps_ahead)::Vector{Float64}
    for k in 1:steps_ahead
        forecast = past_data[Int(end + k - seasonality*(floor((k - 1)/seasonality)+1))]
        forecasts[k] = forecast
    end

    return forecasts

end
# SeasonalNaive

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://arthur-brigatto.github.io/SeasonalNaive.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://arthur-brigatto.github.io/SeasonalNaive.jl/dev/)
[![Build Status](https://github.com/arthur-brigatto/SeasonalNaive.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/arthur-brigatto/SeasonalNaive.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/arthur-brigatto/SeasonalNaive.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/arthur-brigatto/SeasonalNaive.jl)

A Julia package to forecast time series using the seasonal naïve model. 

Forecasts are done using the following equation:

$`\hat{y}_{T+k} = y_{T+k-m*(\lfloor \frac{k+1}{m}\rfloor + 1)}`$

where $m$ is the seasonal period.

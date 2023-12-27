using SeasonalNaive
using Documenter

DocMeta.setdocmeta!(SeasonalNaive, :DocTestSetup, :(using SeasonalNaive); recursive=true)

makedocs(;
    modules=[SeasonalNaive],
    authors="Arthur Brigatto <arthur.brigatto@gmail.com> and contributors",
    repo="https://github.com/arthur-brigatto/SeasonalNaive.jl/blob/{commit}{path}#{line}",
    sitename="SeasonalNaive.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://arthur-brigatto.github.io/SeasonalNaive.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/arthur-brigatto/SeasonalNaive.jl",
    devbranch="master",
)

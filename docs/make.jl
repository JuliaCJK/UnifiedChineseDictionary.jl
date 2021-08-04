push!(LOAD_PATH, "../src/")

using Documenter, UnifiedChineseDictionary

makedocs(
    sitename="UnifiedChineseDictionary.jl Documentation",
    format=Documenter.HTML(
        prettyurls=get(ENV, "CI", nothing) == "true"
    ),
    modules=[UnifiedChineseDictionary],
    pages=[
        "Home" => "index.md"
    ]
)

deploydocs(
    repo = "github.com/tmthyln/UnifiedChineseDictionary.jl.git",
    devbranch = "main",
    devurl="latest"
    )

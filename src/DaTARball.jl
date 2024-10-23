module DaTARball
const ROOT = dirname(@__FILE__)
Base.@kwdef mutable struct modulePath
    root::String     = ROOT
    dirs::String     = joinpath(dirname(ROOT),"dirs")
end
path = modulePath()

using Tar, GZip, Revise
include("utils/tarballer.jl")

@info "welcome to DaTARball"

end

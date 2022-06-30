include("src/empirical_evd.jl") # for ide reasons needs to be removed for run/final version
using empirical_evd
using BPTT
using Flux
using NPZ

# run file
if abspath(PROGRAM_load_dataset()FILE) == @__FILE__ 
    
    m = load
end

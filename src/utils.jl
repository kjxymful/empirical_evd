using BSON: @load
using BPTT

function load_model(exp::String, run::Int, epoch::Int; eval=true)::BPTT.AbstractPLRNN
    load_path = joinpath(["Results", exp, format_run_ID(run)])
    if eval
        load_path = "../"*load_path
    end
    @load joinpath(load_path, "checkpoints", "model_$epoch.bson") m
    return m
end

function format_run_ID(run::Int)::String
    run_str = string(run)
    n_digits = length(run_str)
    @assert n_digits < 4
    add_zeros = 3 - n_digits
    return repeat("0", add_zeros) * run_str
end
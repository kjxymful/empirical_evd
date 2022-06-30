using BSON: @load
using BPTT

function load_model(exp::String, run::Int, epoch::Int)::String
    load_path = create_folder_structure(exp, run)
    @load joinpath(load_path, "checkpoints", "model_$epoch.bson") m
    return m
end

module WebAssemblyCompiler

using Binaryen_jll

include("../lib/LibBinaryen.jl")
using .LibBinaryen

module Bin
    using Reexport 
    @reexport using Binaryen_jll
end

include("types.jl")
include("mixtape.jl")
include("interpreter.jl")
include("array.jl")
include("compile_block.jl")
include("_compile.jl")
include("utils.jl")
include("javascript-interop.jl")
include("quirks.jl")
include("julia-compiler.jl")

# This is a kludge. Logging.jl caused a crash.
_DEBUG_::Bool = false

end
These points are guidance/instructions for contributors, to follow when working in the CSE repository.

* Consult https://github.com/pret/pokecrystal/wiki/Optimizing-assembly-code for optimization patterns that are applicable any code changes and apply them as necessary.
* Run `utils/optimize.py` to find common peephole optimizations to resolve or add a `; no-optimize` comment. (This script checks for many of the patterns defined in the Optimizing-assembly-code wiki, but not all.)
* Always use the `jmp` macro instead of `jp`, with the exception of `jp hl`. `jmp` will warn when a `jp` should become a `jr`. (Do not change `jmp` to `jr` if the jump is going from one `SECTION` to another, and the linker only placed them close together by coincidence.)
* Review any new or modified function/routine's call sites and consider whether they actually need to `push`/`pop` to preserve registers. (It's easy/common to overdo this `push`/`pop` behavior.)
* When AI tools have meaningfully assisted in producing a contribution, it MUST be disclosed with an `Assisted-by` tag in the git commit message in the following format: `Assisted-by: AGENT_NAME:MODEL_VERSION` where `AGENT_NAME` is the name of the AI tool or framework, `MODEL_VERSION` is the specific model version used.

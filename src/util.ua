# util functions for sortsol
# by: Noah Syrkis

# functions
Save ← &fwa "out.gif" &gife 24            # save gif to file
Draw ← ⍜(⊡|+ 1) : ↯ 100_100 [0] ⊏ ⊚ ◰ . ⁅ # don't hardcode 100
TSNE ← +                                  # t-SNE 
Rand ← × 0.1 - 0.5 ↯⊃(△|∵⋅⚂ ⇡/×△)         # makes random array like input 

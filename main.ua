n ← 10  # number particles
d ← 100 # world size

# function for giving observations
# Sees ←
# function for moving particles
# Move ←
# function for drawing the world
# Draw ←
# function for simulated annealing
SimA ← {⍝ Simulated Annealing
  ⍺←0.1 ⋄ ⍵←0.9 ⋄ ⍺≥⍵:⍺
  ⍝ do something
  (⍺+⍵)÷2
}
Save ← &fwa "docs/figs/out.gif" &gife 2
Draw ← ⍜(⊡|+ 1) : ↯ d_d [0] ⊏ ⊚ ◰ . ⁅
Seed ← (↯ n_2 × - 1 d ∵⋅⚂ ⇡ × 2 n)
Save ↧ 0.9 ≡Draw ∵⋅Seed ⇡ 10
Move ← + × 0.1 Seed
Move Move Seed

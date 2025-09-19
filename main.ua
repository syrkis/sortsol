┌─╴Cfg ~ N R S T W
  W ← 1024 # map size
  N ← 1000 # units
  T ← 300  # time
  R ← 2    # random seed
  S ← 3    # scale
└─╴

Init ← |1 + ÷ 2 W × S - 0.5 gen N_2         # inits
Step ← |2 + × S -0.5 gen N_2                # step
Draw ← |1 ⍜(⊡|+1) ↥ 0 ↧ -1 W ⌊ : × 0 °△ W_W # shows

# Save ← &fwa : img "png"
≡Draw ∧(.Step) ⇡ T Init R
# ≡Save : {"1.png" "2.png" "3.png" "4.png" "5.png"} ⊏ ⊚ = 0 ◿ 200 ⇡ T
&fwa "out.gif" gif 100

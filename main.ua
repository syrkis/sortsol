~ "src/util.ua" ~ Rand Save
~ "src/infr.ua" ~ Infr Loss
# sortsol main file
# by: Noah Syrkis

# globals
n ← 300  # num drones
d ← 2    # num dimensions
w ← 200  # world size
t ← 1000 # time

# functions
Swrm ← ↯ n_d × w ∵⋅⚂ ⇡ × d n      # init 10 drones in 100x100 space # maybe go cubic
Move ← ⊂ ◿ w + ⊃(× 20 Rand|∘) ⊢ . # move drones TODO: Should take acumulator
Draw ← ≡(⍜(⊡|+1) : ↯ w_w 0 ◴ ⌊)   # draw a frame of a world
Init ← ∘                          # make new world (underground labrinth, maybe Perlin?)
Obsv ← ∘                          # generate observation vectors for each drone
Comm ← ∘                          # communication table

# stack
Swrm      # apply random action 11 times
⍥Move t ¤ # add leadging dimension for time
Save Draw # save the world to gif

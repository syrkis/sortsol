~ "src/util.ua" ~ Rand Save
~ "src/infr.ua" ~ Infr Loss
# sortsol main file
# by: Noah Syrkis

# globals
n ← 1000 # num drones
d ← 2    # num dimensions. Training in 4D and testing in 2D could be interesting
w ← 200  # world size
t ← 2000 # time

# functions
Swrm ← ↯ n_d ÷ 2 w                # init n drones in w x w world
Move ← ⊂ ◿ w + ⊃(× 30 Rand|∘) ⊢ . # move drones TODO: Should take acumulator
Draw ← ≡(⍜(⊡|+1) : ↯ w_w 0 ◴ ⌊)   # draw a frame of a world
Init ← ∘                          # make new world (underground labrinth, maybe Perlin?)
Obsv ← ∘                          # generate observation vectors for each drone
Comm ← ∘                          # communication table

# stack
Swrm        # apply random action 11 times
⇌ ⍥Move t ¤ # add leadging dimension for time
Save Draw   # save the world to gif

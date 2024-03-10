~ "src/infr.ua" ~ Infr Loss
~ "src/util.ua" ~ Draw Rand Save
# sortsol main file
# by: Noah Syrkis

# functions
Init ← (↯ 10_3 × - 1 100 ∵⋅⚂ ⇡ × 3 10) # init 10 point in 100x100 space # maybe go cubic
Move ← + × 0.1 Init                    # continuously move using basic physics

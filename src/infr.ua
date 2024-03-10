~ "util.ua" ~ Rand
# multi layer perceptron
# by: Noah Syrkis

# functions
ReLU ← ↥ 0                                                     # ReLU function
DotP ← ⊞(/+ ×) ⊙⍉                                              # Matrix multiplication
Init ← : Rand ↯ : 0 : Rand ↯ : 0 ⊙⇌ ⊂ ⊙: ⊙⊃(⊂|⋅∘) ⊙(⊢ ⇌ △) ⊢ △ # Initialize weights
Loss ← ÷ ⊃(/× △|/+) ⁿ 2 -                                      # mean squared error (switch to swarm evaluation)
Infr ← DotP ReLU DotP                                          # Inference function

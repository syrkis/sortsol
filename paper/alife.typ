#set par(justify: true, leading: 1em)
#set text(size: 11pt)
#set list(marker: "▶")

#show heading: it => [
  #set text(weight: "regular")
  #block(smallcaps(text(it.body, tracking: 0.1em)))
  #v(0.25em)
]

#text(size: 1.5em, align(center)[#smallcaps[Uiua: A Modern Array Language for
  Artificial Life Research]])

#text(align(center)[Noah Syrkis

  IT University of Copenhagen

  #link("nobr@itu.dk")
])

#pad(top: 1em, bottom: 2em, left: 3em, right: 3em)[
  #block[
    _#smallcaps([*Abstract*]):_ Uiua#footnote[#link("https://www.uiua.org/")],
    an APL-like stack-based array programming language, offers a powerful
    alternative for Artificial Life (ALife) research. Its concise syntax and
    efficient array operations enable rapid prototyping and complex simulations
    of bio-like systems. This abstract showcases Uiua's capabilities through a
    basic particle swarm simulation example and discusses its potential for
    ALife research.
  ]
]

= Introduction

Artificial Life (ALife) research often involves complex simulations of bio-like
systems, which require efficient manipulation of large datasets and intricate
computational models. Traditional programming languages, while versatile, may
not always provide the optimal balance of expressiveness and performance for
such tasks. Uiua, an APL-like stack-based array language written in Rust, offers
a compelling alternative for ALife researchers.

All operations operate on a global stack. For examples `+ + 1 2 3` pushes the
values `3`, `2`, and `1` onto the stack while the left most `+` adds `3` to the
sum of `1` and `2`. Uiua's syntax and semantics are designed to be intuitive and
concise, allowing researchers to express complex algorithms with minimal code.
Plugging these expressions into high level functional combinators, a subset of
which is described in @fns, can be used to create powerful and efficient ALife
simulations.

#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 0.75em,
    align: center,
    `∧ fold`, `⍜ under`, `≡ rows`,
    [Apply a function to aggregate arrays],
    [Operate on a transformed array, then untransform it],
    [Apply a function to each row of an array or arrays],

    [`∧+ [1 2 3] 10` $->$ `16`],
    [`⍜+(×2) 1 5` $->$ `11`],
    [`≡∧+ [1_2 4_5] 0` $->$ `3_9`],
  ),
  caption: [Combinators (top) with descriptions (mid) and examples (bottom)],
)<fns>

Note how each function in @fns takes in another function as an argument. In the
context of ALife, this other function could be a step function. Uiua's ability
to perform vectorized operations on entire arrays at once can significantly
reduce computational overhead, while allowing seamless abstraction over
low-level details. For example, the `Step` for Conway's game of life can be
written as #box[`Step ← ↥∩'=3⊙-,∶/+⍚ 1_∞ ↻/⊂-1⇡ 3_3.`] (by the user Garmelon on
the very welcoming Uiua discord server).



// Moreover, Uiua's support for higher-order functions and functional programming
// paradigms makes it well-suited for implementing evolutionary algorithms, genetic
// programming, and other ALife techniques. Researchers can leverage Uiua's
// expressive power to quickly prototype and iterate on their models, accelerating
// the pace of discovery in the field.

= Method

The following example demonstrates a simple particle swarm simulation in Uiua.
Frist we define `Init` that, awaiting a seed, creates a 10 by 2 array
(representing position) of numbers uniformly distributed between `0` and the map
size `W`. Next we define `Step` to take in an array and add random noise to each
element, clipping all values to be within the bounds of the map. Finally `Draw`
turns an array of positions into a location matrix (which can be used with
Uiua's inbuilt `&gifs` or `&ims` to generate gifs or images).

#figure(
  stack(
    // dir: ltr,
    figure(
      table(
        inset: 0.75em,
        ```Uiua
        W    ← 100                             # size constant
        Init ← |1 + ÷ 2 W gen N_2              # inits
        Step ← |2 ↥ 0 ↧ - 1 W + -0.5 ⊙gen ⟜△ : # step
        Draw ← |1 ⍜(⊡|-1) ⌊ : + 1 × 0 °△ W_W   # shows
        ```,
      ),
    ),
    // stack(
    // image("papers/one.png"),
    // image("papers/two.png"),
    // ),
  ),
  caption: [`Init`, `Step` and `Draw` functions for a basic particle swarm
    simulation],
)<code>

The vertical bar and number (`|1`) after the function assignment operators
describes the number of arguments each function takes. Increasing the complexity
of our simulations then amounts to merely elaborating the `Init` and `Step`
functions.

= Results

Combining the code in @run we can run a full simulation (or arbitrarily many
parallel simulations).


#figure(
  table(
    inset: 0.75em,
    ```
    ≡Draw ∧(.Step) ⇡ 1000 Init 0                         # Run and then draw sim
    Save ← &fwa : img "png"                              # save function
    ≡Save : {"1" "2" "3" "4" "5"} ⊏ ⊚ = 0 ◿ 200 ⇡ 1000   # actually save
    ```,
  ),
  caption: [Running and saving (see @vis) a 1000 step simulation (with seed 0)],
)<run>

#figure(
  stack(
    dir: ltr,
    image("plots/1.png"),
    image("plots/2.png"),
    image("plots/3.png"),
    image("plots/4.png"),
    image("plots/5.png"),
  ),
  caption: [Every 200th step throughout the simulation],
)<vis>

For more complex example, consider evolutionary neural network implementation
@kaikalii_evonet_github made by the creator of Uiua, which demonstrates Uiua's
potential for implementing advanced ALife techniques.

= Conclusion

The particle swarm simulation demonstrates Uiua's capabilities for ALife
research. By leveraging Uiua's array operations and functional programming
paradigms, researchers can create efficient and expressive simulations of
bio-like systems. The concise syntax and stack-based approach enable rapid
prototyping and iteration, facilitating hypothesis testing and model refinement.
By adopting Uiua, ALife researchers can streamline their workflows, reduce
boilerplate code, and focus more on the scientific challenges at hand.

// = Conflicts

// The author is a contributor to the Uiua language and has a vested interest in
// promoting its use in ALife research.

#bibliography("zotero.bib", title: "References")

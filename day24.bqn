u←•Import "util.bqn"
x‿y←(⊑':'⊸∊)¨⊸⊔ u.Lines u.GetContents @
cir←" ->"⊸u.Split¨ x ⋄ inp←u.ParseInt⌾(1⊸⊑)¨ ": "⊸u.Split¨y
nam←∧⍷∾0‿2‿3⊸⊏¨cir
op←>(↕≠nam) {≠𝕩?⊑𝕩;⊢‿𝕨‿𝕨}¨ (nam⊸⊐∘(⋈∘¯1⊸⊑¨) ⊔ ({"XOR":≠;"OR":∨;"AND":∧}∘(1⊸⊑)∾nam⊸⊐∘(0‿2⊸⊏))¨) cir
Bin←{𝕊 𝕩: +´2⊸⋆⟜(↕≠)⊸× 𝕩; 𝕊⁼𝕩: ≤⟜1◶(2⊸|∾𝕊⁼∘⌊∘(÷⟜2))‿⋈ 𝕩}
Eval←{𝕨 𝕊 vx‿vy:
  state←vx⌾(('x'=⊑¨nam)⊸/) vy⌾(('y'=⊑¨nam)⊸/) ¯1¨nam
  ('z'=⊑¨nam)/{s 𝕊 f‿a‿b: a (0>⌊)◶F‿¯1○(⊑⟜s) b}⎉∞‿1⟜𝕨 •_while_ (0>⌊´) state
}
vx‿vy←(⊐⊑¨⍟2)⊸⊔⟜(1⊸⊑¨)∧inp
•Show Bin op Eval vx‿vy
# The swaps were found by manually inspecting wrong bits in the result
op2←op {⌽⌾(𝕨⊸⊏) 𝕩}´ swaps←⟨34‿272,93‿277,77‿297,69‿9⟩
!∧´(vx +⌾Bin vy) (((≠⊢)↑⊣)=⊢) op2 Eval vx‿vy
•Show {𝕨∾','∾𝕩}´∧swaps∾⊸⊏nam

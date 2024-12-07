u←•Import "util.bqn"
x←u.Lines u.GetContents @
R←4⊸|+⟜1 ⋄ Do←⊣(1+⊑˜)⎊@(⊑¯1+⍋) ⋄ Up←⊣(¯1+⊑˜)⎊@(⊑⍋) ⋄ Finite←∧´(∞≠|)
Go←{rows‿cols 𝕊 i‿j‿d: v←2|d ⋄ i‿j↩v⌽i‿j ⋄ a←i⊑v⊑rows‿cols ⋄ b←a (d≥2)◶Do‿Up j ⋄ (v⌽i‿b)∾R d}

# Process the input
rows‿cols←{¯∞∾𝕩∾∞}∘/⚇1<˘¨⋈⟜⍉>'#'=x
start←((/∨´¨)∾(∾/¨))'^'=x

# Part 1
visited←0¨>x
p←¯1⊸↓¨ rows‿cols {𝕩∾<𝕨 Go ¯1⊑𝕩} •_while_ {Finite ¯1⊑𝕩} ⟨start∾1⟩
(¯1↓p) {min←0⌈𝕨⌊𝕩 ⋄ max←(¯1+≠x)⌊𝕨⌈𝕩 ⋄ i←min⊸+¨⥊↕1‿1+max-min ⋄ visited 1¨⌾(i⊸⊑)↩}¨ (1↓p)
•Show +´⥊visited

# Part 2
•Show +´ {𝕊 i‿j:
  seen←•HashMap˜⟨⟩
  Finite ⟨{∧j∾𝕩}⌾(i⊸⊑)rows, {∧i∾𝕩}⌾(j⊸⊑)cols⟩ {seen.Set˜𝕩 ⋄ 𝕨 Go 𝕩} •_while_ {(¬seen.Has 𝕩) ∧ Finite 𝕩} start∾1
}¨ visited/○⥊↕≢visited

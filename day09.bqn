u←•Import "util.bqn"
[fs,hs]←⍉↑‿2⥊'0'-˜⊑ u.Lines u.GetContents @
n←≠hs ⋄ f←n↑⊔˜/fs ⋄ Cs←+´(↕≠)⊸×
•Show Cs (+´fs)↑ ∾⥊⍉ f ≍ n↑ hs (⊣⊔≠⊸↑⟜⌽)○/ fs
Aux←{s←(≠𝕩) ⋄ {𝕩=n?¯1; hs-⟜s⌾(𝕩⊸⊑)↩ ⋄ 𝕩} ⊑1⊐˜(s≤hs)∧(⊑𝕩)>↕n}
t←Aux¨⌾⌽ f
•Show Cs ∾⥊⍉ [((¯1=t)×¨f), ∾¨n↑t⊔○⌽f, ⥊⟜0¨hs]

u←•Import "util.bqn"
x←u.ParseInt¨ u.Lines u.GetContents @
Prune←16777216⊸| ⋄ Mix←{+˝(2⋆31)‿1× 𝕨 ⟨32⟩•bit._xor○{[⌊𝕩÷2⋆31,(2⋆31)|𝕩]} 𝕩}
Rng←Prune∘(2048⊸×⊸Mix)∘Prune∘(⌊∘÷⟜32⊸Mix)∘Prune∘(64⊸×⊸Mix)
•Show +´Rng⍟2000 x
pr←>10|(<x) (⊣∾(Rng⊣)`) ↕2000
ch←(⊒=⊐)˘˜⌾⍉⊸((-¬∘⊣)+×) +˝˘(20⋆↕4)×⎉2 9+1↓4↕(⊢-») pr
•Show ⌈´+´¨ch⊔○⥊4↓pr

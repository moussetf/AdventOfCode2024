u←•Import "util.bqn"
x←>u.Lines u.GetContents @ ⋄ n←≠x
a←⊐∘(⊑⟜x)⊸⊔ ('.'≠x)/○⥊↕≢x
_solve←{≠⍷∾∾⥊¨≡◶(∧´∘(0⊸≤∧<⟜n)¨⊸/∘𝔽)‿⟨⟩⌜˜¨ a}
•Show {⋈𝕩+𝕩-𝕨} _solve a
•Show {𝕨 +⚇1 (n-˜↕2×n) ×⚇0‿1 𝕨-𝕩} _solve a

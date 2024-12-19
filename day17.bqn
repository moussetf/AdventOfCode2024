u←•Import "util.bqn"
⟨a⟩‿⟨·⟩‿⟨·⟩‿p← u.ParseInt⚇1 ","⊸u.Split¨ ¯1⊸⊑¨": "⊸u.Split¨   ≢⟜⟨⟩¨⊸/ •Flines "day17.in"
Xor←⊑⋈⊸(⟨32⟩•bit._xor)⟜⋈
Aux←{rb←8|𝕩 ⋄ rc←8|⌊𝕩÷2⋆(rb Xor 2) ⋄ 5 Xor rb Xor rc} # did this by hand
•Out {𝕨∾','∾𝕩}´•Fmt¨ {ra←a ⋄ {(ra↩⌊ra÷8) ⊢ 𝕩∾Aux ra} •_while_ {𝕤 ⋄ ra≠0} ⟨⟩}
•Show 0 {t 𝕊 h: (8×h)+⊑⟨t⟩⊐˜Aux¨(8×h)+↕8}´ p

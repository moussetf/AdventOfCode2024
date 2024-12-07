u←•Import "util.bqn"
x←⊑⊸⋈⟜(⌽1⊸↓)¨ u.ParseInt⚇1": "⊸u.Split¨ u.Lines u.GetContents @
_h←{ops _𝕣: {𝕨≠|⌊𝕨?0; 1=≠𝕩?𝕨=⊑𝕩; a F b: ∨´{(a𝕏⊑b) F 1↓b}¨ops}}
•Show +´{𝕊 t‿n: t×t -‿÷ _h n}¨ x
•Show +´{𝕊 t‿n: t×t -‿÷‿{(𝕨-𝕩)÷10⋆≠•Fmt 𝕩} _h n}¨ x

u←•Import "util.bqn"
x←(2≤↕4)⊸⊔¨ u.ParseInt⚇1 1‿2‿4‿5⊸⊏¨ ",= "⊸u.Split¨ u.Lines u.GetContents @
dims←101‿103 ⋄ F←{dims⊸|¨+´¨1‿𝕩×⚇1‿2 x}
•Show {m←⌊dims÷2 ⋄ ×´≠¨ {∨´m=𝕩?¯1; +´1‿2×𝕩≥m}¨⊸⊔ F 100}
C←+´∘⥊∘(⊢∧»∧«∧»˘∧«˘)∘{>((⊑dims)↑/⁼)¨1⊸⊑¨¨(1⊑dims)↑⊑¨⊸⊔⌽¨𝕩}
•Show ⊑⍒C∘F¨ ↕×´dims

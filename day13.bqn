u←•Import "util.bqn"
x←u.ParseInt⚇1 1‿3⊸⊏∘("=+,"⊸u.Split)¨¨ <˘∘‿3⥊ u.Lines u.GetContents @
D←-´×⟜⌽ ⋄ S←{𝕊 a‿b‿c: (c D b)‿(a D c)÷(a D b)} ⋄ F←+´∘∾∘(3‿1⊸×⚇1)∘((∧´¨⌊⊸=)⊸/)
•Show F S¨ x
•Show F S¨ +⟜0‿0‿10000000000000¨ x

u←•Import "util.bqn"
·‿rls‿ups←(+´1‿2⊸×)∘("|,"⊸∊)¨⊸⊔ u.Lines u.GetContents @
y←⊔˝⍉> u.ParseInt⚇1 "|"⊸u.Split¨ rls ⋄ x←u.ParseInt⚇1 ","⊸u.Split¨ ups
F←⍉+´˘∘>∘(∊⚇1⟜(⊏⟜y))⊸≍ ⋄ E←1⊑(⌊2÷˜≠)⊸⊏
•Show +´E¨∨⊸≡¨⊸/ F¨x
•Show +´E¨∨¨∨⊸≢¨⊸/ F¨x

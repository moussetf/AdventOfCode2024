u←•Import "util.bqn"
x←'0'-˜> u.Lines u.GetContents @
a←(x=9) ⊣◶⟨⟩‿(⋈⊢)¨ ↕≢x ⋄ L←(<⟨⟩)⊸»˘ ⋄ R←(<⟨⟩)⊸«˘
F←{(x=𝕨) ⊣◶⟨⟩‿⊢¨ (L∾¨R∾¨L⌾⍉∾¨R⌾⍉) 𝕩}
•Show +´⥊≠¨⍷¨a F´ ↕9
•Show +´⥊≠¨  a F´ ↕9

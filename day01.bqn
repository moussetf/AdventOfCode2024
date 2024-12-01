u←•Import "util.bqn"
[a,b]←⍉∘‿2⥊u.ParseInt¨⟨⟩⊸≢¨⊸/∾" "⊸u.Split¨ u.Lines u.GetContents @
•Show +´|a-○∧b
•Show +´a×-˝b∧⊸⍋a≍a-1

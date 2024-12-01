⟨Split,ParseInt⟩←•Import "util.bqn"
[a,b]←⍉∘‿2⥊ParseInt¨⟨⟩⊸≢¨⊸/∾" "⊸Split¨•Flines "day01.in"
•Show +´|a-○∧b
•Show +´a×-˝(∧b)⍋a≍a-1

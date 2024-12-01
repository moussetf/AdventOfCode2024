⟨Split,ParseInt⟩←•Import "util.bqn"
[a,b]←⍉∘‿2⥊ParseInt¨⟨⟩⊸≢¨⊸/∾" "⊸Split¨•Flines "day01.in"
≡•Show +´|a-○∧b
≡•Show +´a×a-○((∧b)⊸⍋)a-1

⟨Split,ParseInt⟩←•Import "util.bqn"
[a,b]←⍉∘‿2⥊ParseInt¨⟨⟩⊸≢¨⊸/∾" "⊸Split¨•Flines "day01.in"
!2344935≡•Show +´|a-○∧b
!27647262≡•Show +´a×a-○((∧b)⊸⍋)a-1

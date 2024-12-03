u←•Import "util.bqn"
x←u.GetContents @
G←⌈`(≠⊢)((↕⊣)×↑)⍷ ⋄ F←1⊸↓(⊐∘(×⟜(+`¬))(≥´G⚇1)∧(≤´G⌾⌽⚇1))⊔⊢
Prodsum←{+´×´¨u.ParseInt⎊0¨¨","⊸u.Split¨"mul("‿")"F𝕩}
•Show Prodsum x
•Show Prodsum x/˜≤´"don't()"‿"do()"G⚇1 x

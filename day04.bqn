u←•Import "util.bqn"
x←>u.Lines u.GetContents @ ⋄ F←(≠⊢)↑⍷ ⋄ D←(+´¨⊸⊔(↕≢))⊸⊑
•Show +´⥊ "XMAS"⊸F {𝕗+𝕗⌾⌽} {𝔽˘+𝔽˘⌾⍉+𝔽¨⌾D+𝔽¨⌾(D⌽)} x
•Show +´⥊ ¯1⊸⌽∘("MAS"⊸F) {𝕗+𝕗⌾⌽} {2=(𝔽¨⌾D+𝔽¨⌾(D⌽))} x

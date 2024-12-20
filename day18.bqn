u←•Import "util.bqn"
x←u.ParseInt⚇1 ","⊸u.Split¨ u.Lines u.GetContents @
e←⌈´x ⋄ r←[∞⥊˜1+1⊑e] ⋄ _settle←{⊑((𝔽⊑)⋈⊑)•_while_(⊑≢1⊸⊑) 𝕩‿@}
F←e⊑{w←(0⥊˜1+e) {∞˙⌾(𝕨⊸⊑)𝕩}´ 𝕩↑x ⋄ (w⌈⊢⌊1+r⊸»⌊r⊸«⌊∞⊸»˘⌊∞⊸«˘) _settle 0˙⌾⊑∞¨w}
•Show F 1024
•Out {𝕨∾','∾𝕩}´•Fmt¨ x⊑˜¯1+0 {𝕨=𝕩?𝕨; m←⌊2÷˜𝕨+𝕩 ⋄ 𝕊´(∞>F m)⊑⟨𝕨‿m,(m+1)‿𝕩⟩} ≠x

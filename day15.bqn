u←•Import "util.bqn"
b‿m←('#'≠⊑)¨⊸⊔ u.Lines u.GetContents @ ⋄ b>↩ ⋄ m∾↩
Score←{+´∾100‿1×⚇1(𝕨=𝕩)/○⥊(↕≢𝕩)} ⋄ _sel←{(⊑"<>^v"⊐𝕨)◶𝕗 𝕩}
Ri←{𝕊 b: {h‿w←𝕩⊐".#" ⋄ (w≤h)◶('.'⊸»⌾((↕1+h)⊸⊏)⊢)‿⊢ 𝕩}⌾((⊑b⊐'@')⊸↓) b}˘
Up←{𝕊 b:
  boxes←(⊢∨((b=']')∧(«∨(»˘«)))∨((b='[')∧(«∨(«˘«))))⍟(≠b) b='@'
  {∨´⥊boxes∧(»b='#')?b; (boxes/○⥊b)⌾((«boxes)⊸(/○⥊)) '.'¨⌾(boxes⊸(/○⥊)) b}
}
•Show 'O' Score b ⟨Ri⌾(⍉∘⌽∘⍉),Ri,Ri⌾(⍉⌽),Ri⌾⍉⟩_sel´ ⌽m
•Show '[' Score (∾˘{'@':"@.";'O':"[]";𝕩‿𝕩}¨b) ⟨Ri⌾(⍉∘⌽∘⍉),Ri,Up,Up⌾⌽⟩_sel´ ⌽m

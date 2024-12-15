u←•Import "util.bqn"
b‿m←('#'≠⊑)¨⊸⊔ u.Lines u.GetContents @ ⋄ b>↩ ⋄ m∾↩
Score←{+´∾100‿1×⚇1(𝕨=𝕩)/○⥊(↕≢𝕩)}
Ri←{𝕊 b: s←⊑b⊐'@' ⋄ {s=≠b?b; h‿w←(s↓b)⊐".#" ⋄ {w<h?b; '.'⊸»⌾((s+↕1+h)⊸⊏) b}}}
Up←{𝕊 b:
  boxes←(⊢∨((b=']')∧(«∨(»˘«)))∨((b='[')∧(«∨(«˘«))))⍟(≠b) b='@'
  {∨´⥊boxes∧(»b='#')?b; (boxes /○⥊ b) ⌾ ((«boxes)⊸(/○⥊))  '.'¨⌾(boxes⊸(/○⥊)) b}
}
•Show 'O' Score b {(⊑"<>^v"⊐𝕨)◶⟨Ri⌾⌽˘,Ri˘,Ri˘⌾(⌽˘⍉),Ri˘⌾⍉⟩𝕩}´ ⌽m
•Show '[' Score (∾˘{'@':"@.";'O':"[]";𝕩‿𝕩}¨ b) {(⊑"<>^v"⊐𝕨)◶⟨Ri⌾⌽˘,Ri˘,Up,Up⌾⌽⟩𝕩}´ ⌽m

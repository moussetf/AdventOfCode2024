u←•Import "util.bqn"
x←u.Lines u.GetContents @ ⋄ twl←", " u.Split ⊑x ⋄ cases←1↓x
l←≠¨twl ⋄ z←<˘∘⍉∘>¨<˘⍉ twl ((≠⊢)↑⍷)⌜ cases
•Show +´ {⊑ 1‿0 {𝕩∾˜∨´(¯1+𝕨×l)⊏𝕩}´ 𝕩}¨ z
•Show +´ {⊑ 1‿0 {𝕩∾˜+´(¯1+𝕨×l)⊏𝕩}´ 𝕩}¨ z

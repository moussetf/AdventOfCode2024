u←•Import "util.bqn"
x←u.ParseInt⚇1 " " u.Split ⊑u.Lines u.GetContents @
B←{0: ⋈1; 0=2|d←⌈10⋆⁼1+𝕩? (10⋆d÷2)(⌊÷˜⋈|)𝕩; ⋈2024×𝕩}
F←{+⌾(1⊸⊑)´¨(⊐⊑¨)⊸⊔∾⋈¨´¨B⌾⊑¨ 𝕩}
•Show +´ 1⊑¨ F⍟25 x⋈¨1
•Show +´ 1⊑¨ F⍟75 x⋈¨1

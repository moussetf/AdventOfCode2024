u←•Import "util.bqn"
x← "-"⊸u.Split¨ u.Lines u.GetContents @
Cl←{r←¯1⊑¨𝕩 ⋄ s←¯1↓¨𝕩 ⋄ ∾𝕩∾⚇1‿0¨ s ((∧´¨⊣∊⚇∞‿¯1𝕨⊏˜⊢)¨/¨⊢) r (</¨⊢) r⊏𝕨 }
nam←⍷∾x ⋄ Adj←⊑¨⊸⊔⟜(1⊸⊑¨) ⋄ g←(Adj∾¨(Adj⌽¨)) ⊐⌾∾x
•Show +´ {∨´'t'=⊑¨𝕩⊏nam}¨ g Cl⍟2 ⋈¨↕≠g
•Show {𝕨∾','∾𝕩}´∧nam⊏˜⊑ g Cl •_while_ (1⊸<⟜≠) ⋈¨↕≠g

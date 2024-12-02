u←•Import "util.bqn"
x←⥊u.ParseInt⚇1" "⊸u.Split¨ u.Lines u.GetContents @
Safe1←∧´((1≤|)∾(3≥|)∾(⊑⊸=×¨))∘(1↓-⟜(⊑⊸»))
Safe2←∨´Safe1¨∘((¯1⊸↓∘↑)∾¨(1⊸↓∘↓))
•Show +´Safe1¨x
•Show +´Safe2¨x

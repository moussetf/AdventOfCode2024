u←•Import "util.bqn"
x←>u.Lines u.GetContents @
# Repeat 𝔽 until the value stops changing
_settle←{⊑((𝔽⊑)⋈⊑)•_while_(⊑≢1⊸⊑) 𝕩‿@}
# Moves: forwards, backwards, left turn, right turn
F←{𝕊 [n,w,s,e]: [»n, »˘w, «s, «˘e]}
B←{𝕊 [n,w,s,e]: [«n, «˘w, »s, »˘e]}
L←¯1⊸⌽ ⋄ R←1⊸⌽
# Part 1
mask←{⊑𝕩∊"ES."?0;∞}¨[x,x,x,x]
dist←(mask+⊢⌊(1+F)⌊1000+L⌊R) _settle {'E':0;∞}¨[x,x,x,x]
•Show (3∾⊑(x='S')/○⥊(↕≢x))⊑dist
# Part 2
fr←1000=R⊸- dist ⋄ fl←1000=L⊸- dist ⋄ fb←1=B⊸- dist
•Show +´⥊∨˝ (⊢∨(fr∧R)∨(fl∧L)∨(fb∧B)) _settle [0¨x,0¨x,0¨x,{'S':1;0}¨x]

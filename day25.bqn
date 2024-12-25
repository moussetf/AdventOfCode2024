u←•Import "util.bqn"
k‿l←('#'=⊑¨)⊸⊔>¨(⌊7÷˜(↕≠))⊸⊔ u.Lines u.GetContents @
•Show +´⥊k(∧´7⊸≥∘+)⌜○(+˝¨'#'⊸=)l

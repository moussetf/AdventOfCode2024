u←•Import "util.bqn"
x←u.Lines u.GetContents @
Numpad←(⥊↕4‿3)⊏˜"789456123·0A"⊸⊐ ⋄ Dirpad←(⥊↕2‿3)⊏˜"·^A<v>"⊸⊐
Path←∾|⥊¨×⊑¨⟨" ^v"," <>"⟩˙
Numpaths←∾⟜'A'⚇1 ⊢ {
    a‿b 𝕊 c‿d: {3‿0≡a‿d? ⟨⌽𝕩⟩; 3‿0≡c‿b? ⟨𝕩⟩; ⍷⟨𝕩,⌽𝕩⟩} Path 𝕩-𝕨
  }¨○Numpad 'A'⊸»
Dirpaths←∾⟜'A'⚇1 ⊢ {
    a‿b 𝕊 c‿d: {0‿0≡a‿d? ⟨⌽𝕩⟩; 0‿0≡c‿b? ⟨𝕩⟩; ⍷⟨𝕩,⌽𝕩⟩} Path 𝕩-𝕨
  }¨○Dirpad 'A'⊸»
hm←•Hashmap˜⟨⟩
Dir←{𝕨=0? ≠𝕩; hm.Has 𝕨‿𝕩? hm.Get 𝕨‿𝕩; 𝕨‿𝕩 (hm.Set⊢⊢) +´(𝕨-1)(⌊´𝕊¨)⚇2 Dirpaths 𝕩}
Num←{+´𝕨(⌊´Dir¨)⚇2 Numpaths 𝕩}
•Show +´ (u.ParseInt⚇1 3↑¨x) × 2 Num¨ x
•Show +´ (u.ParseInt⚇1 3↑¨x) × 25 Num¨ x

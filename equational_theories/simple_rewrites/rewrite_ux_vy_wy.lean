import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation555 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (y ∘ (x ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation758 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((y ∘ x) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation961 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ y) ∘ (x ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1164 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (y ∘ x)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1367 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ y) ∘ x) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1570 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (y ∘ (x ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1773 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((y ∘ x) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1976 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ y)) ∘ (x ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2179 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ y) ∘ (x ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2382 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (y ∘ x))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2585 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ y) ∘ x)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2788 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (y ∘ x)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2991 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ y)) ∘ x) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3194 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ y) ∘ x) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3397 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (y ∘ (x ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3600 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((y ∘ x) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3803 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ y) ∘ (x ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4006 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (y ∘ x)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4209 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ y) ∘ x) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4524 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (y ∘ x) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation555 (G : Type*) [Magma G] (h : Equation613 G) : Equation555 G := λ x y z => h x y z y x y
theorem Equation816_implies_Equation758 (G : Type*) [Magma G] (h : Equation816 G) : Equation758 G := λ x y z => h x y z y x y
theorem Equation1019_implies_Equation961 (G : Type*) [Magma G] (h : Equation1019 G) : Equation961 G := λ x y z => h x y z y x y
theorem Equation1222_implies_Equation1164 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1164 G := λ x y z => h x y z y x y
theorem Equation1425_implies_Equation1367 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1367 G := λ x y z => h x y z y x y
theorem Equation1628_implies_Equation1570 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1570 G := λ x y z => h x y z y x y
theorem Equation1831_implies_Equation1773 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1773 G := λ x y z => h x y z y x y
theorem Equation2034_implies_Equation1976 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1976 G := λ x y z => h x y z y x y
theorem Equation2237_implies_Equation2179 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2179 G := λ x y z => h x y z y x y
theorem Equation2440_implies_Equation2382 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2382 G := λ x y z => h x y z y x y
theorem Equation2643_implies_Equation2585 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2585 G := λ x y z => h x y z y x y
theorem Equation2846_implies_Equation2788 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2788 G := λ x y z => h x y z y x y
theorem Equation3049_implies_Equation2991 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2991 G := λ x y z => h x y z y x y
theorem Equation3252_implies_Equation3194 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3194 G := λ x y z => h x y z y x y
theorem Equation3455_implies_Equation3397 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3397 G := λ x y z => h x y z y x y
theorem Equation3658_implies_Equation3600 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3600 G := λ x y z => h x y z y x y
theorem Equation3861_implies_Equation3803 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3803 G := λ x y z => h x y z y x y
theorem Equation4064_implies_Equation4006 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4006 G := λ x y z => h x y z y x y
theorem Equation4267_implies_Equation4209 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4209 G := λ x y z => h x y z y x y
theorem Equation4582_implies_Equation4524 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4524 G := λ x y z => h x y z y x y
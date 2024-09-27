import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation571 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (z ∘ (x ∘ x)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation774 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((z ∘ x) ∘ x))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation977 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ z) ∘ (x ∘ x))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1180 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (z ∘ x)) ∘ x)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1383 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ z) ∘ x) ∘ x)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1586 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (z ∘ (x ∘ x))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1789 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((z ∘ x) ∘ x)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1992 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ z)) ∘ (x ∘ x)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2195 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ z) ∘ (x ∘ x)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2398 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (z ∘ x))) ∘ x
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2601 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ z) ∘ x)) ∘ x
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2804 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (z ∘ x)) ∘ x
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3007 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ z)) ∘ x) ∘ x
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3210 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ z) ∘ x) ∘ x
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3413 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (z ∘ (x ∘ x))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3616 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((z ∘ x) ∘ x)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3819 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ z) ∘ (x ∘ x)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4022 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (z ∘ x)) ∘ x
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4225 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ z) ∘ x) ∘ x
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4540 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (z ∘ x) ∘ x
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation571 (G : Type*) [Magma G] (h : Equation613 G) : Equation571 G := λ x y z => h x y z z x x
theorem Equation816_implies_Equation774 (G : Type*) [Magma G] (h : Equation816 G) : Equation774 G := λ x y z => h x y z z x x
theorem Equation1019_implies_Equation977 (G : Type*) [Magma G] (h : Equation1019 G) : Equation977 G := λ x y z => h x y z z x x
theorem Equation1222_implies_Equation1180 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1180 G := λ x y z => h x y z z x x
theorem Equation1425_implies_Equation1383 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1383 G := λ x y z => h x y z z x x
theorem Equation1628_implies_Equation1586 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1586 G := λ x y z => h x y z z x x
theorem Equation1831_implies_Equation1789 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1789 G := λ x y z => h x y z z x x
theorem Equation2034_implies_Equation1992 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1992 G := λ x y z => h x y z z x x
theorem Equation2237_implies_Equation2195 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2195 G := λ x y z => h x y z z x x
theorem Equation2440_implies_Equation2398 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2398 G := λ x y z => h x y z z x x
theorem Equation2643_implies_Equation2601 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2601 G := λ x y z => h x y z z x x
theorem Equation2846_implies_Equation2804 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2804 G := λ x y z => h x y z z x x
theorem Equation3049_implies_Equation3007 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3007 G := λ x y z => h x y z z x x
theorem Equation3252_implies_Equation3210 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3210 G := λ x y z => h x y z z x x
theorem Equation3455_implies_Equation3413 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3413 G := λ x y z => h x y z z x x
theorem Equation3658_implies_Equation3616 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3616 G := λ x y z => h x y z z x x
theorem Equation3861_implies_Equation3819 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3819 G := λ x y z => h x y z z x x
theorem Equation4064_implies_Equation4022 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4022 G := λ x y z => h x y z z x x
theorem Equation4267_implies_Equation4225 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4225 G := λ x y z => h x y z z x x
theorem Equation4582_implies_Equation4540 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4540 G := λ x y z => h x y z z x x
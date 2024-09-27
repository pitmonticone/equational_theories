import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation563 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (y ∘ (z ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation766 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((y ∘ z) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation969 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ y) ∘ (z ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1172 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (y ∘ z)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1375 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ y) ∘ z) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1578 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (y ∘ (z ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1781 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((y ∘ z) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1984 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ y)) ∘ (z ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2187 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ y) ∘ (z ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2390 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (y ∘ z))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2593 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ y) ∘ z)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2796 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (y ∘ z)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2999 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ y)) ∘ z) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3202 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ y) ∘ z) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3405 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (y ∘ (z ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3608 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((y ∘ z) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3811 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ y) ∘ (z ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4014 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (y ∘ z)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4217 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ y) ∘ z) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4532 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (y ∘ z) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation563 (G : Type*) [Magma G] (h : Equation613 G) : Equation563 G := λ x y z => h x y z y z y
theorem Equation816_implies_Equation766 (G : Type*) [Magma G] (h : Equation816 G) : Equation766 G := λ x y z => h x y z y z y
theorem Equation1019_implies_Equation969 (G : Type*) [Magma G] (h : Equation1019 G) : Equation969 G := λ x y z => h x y z y z y
theorem Equation1222_implies_Equation1172 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1172 G := λ x y z => h x y z y z y
theorem Equation1425_implies_Equation1375 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1375 G := λ x y z => h x y z y z y
theorem Equation1628_implies_Equation1578 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1578 G := λ x y z => h x y z y z y
theorem Equation1831_implies_Equation1781 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1781 G := λ x y z => h x y z y z y
theorem Equation2034_implies_Equation1984 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1984 G := λ x y z => h x y z y z y
theorem Equation2237_implies_Equation2187 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2187 G := λ x y z => h x y z y z y
theorem Equation2440_implies_Equation2390 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2390 G := λ x y z => h x y z y z y
theorem Equation2643_implies_Equation2593 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2593 G := λ x y z => h x y z y z y
theorem Equation2846_implies_Equation2796 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2796 G := λ x y z => h x y z y z y
theorem Equation3049_implies_Equation2999 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2999 G := λ x y z => h x y z y z y
theorem Equation3252_implies_Equation3202 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3202 G := λ x y z => h x y z y z y
theorem Equation3455_implies_Equation3405 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3405 G := λ x y z => h x y z y z y
theorem Equation3658_implies_Equation3608 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3608 G := λ x y z => h x y z y z y
theorem Equation3861_implies_Equation3811 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3811 G := λ x y z => h x y z y z y
theorem Equation4064_implies_Equation4014 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4014 G := λ x y z => h x y z y z y
theorem Equation4267_implies_Equation4217 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4217 G := λ x y z => h x y z y z y
theorem Equation4582_implies_Equation4532 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4532 G := λ x y z => h x y z y z y
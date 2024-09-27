import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation427 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (y ∘ (x ∘ (x ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation630 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (y ∘ ((x ∘ x) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation833 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((y ∘ x) ∘ (x ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1036 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((y ∘ (x ∘ x)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1239 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((y ∘ x) ∘ x) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1442 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ y) ∘ (x ∘ (x ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1645 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ y) ∘ ((x ∘ x) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1848 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (y ∘ x)) ∘ (x ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2051 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ y) ∘ x) ∘ (x ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2254 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (y ∘ (x ∘ x))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2457 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((y ∘ x) ∘ x)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2660 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ y) ∘ (x ∘ x)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2863 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (y ∘ x)) ∘ x) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3066 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ y) ∘ x) ∘ x) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3269 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = y ∘ (x ∘ (x ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3472 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = y ∘ ((x ∘ x) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3675 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (y ∘ x) ∘ (x ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3878 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (y ∘ (x ∘ x)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4081 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((y ∘ x) ∘ x) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4396 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ y) = (x ∘ x) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation427 (G : Type*) [Magma G] (h : Equation613 G) : Equation427 G := λ x y => h x x y x x y
theorem Equation816_implies_Equation630 (G : Type*) [Magma G] (h : Equation816 G) : Equation630 G := λ x y => h x x y x x y
theorem Equation1019_implies_Equation833 (G : Type*) [Magma G] (h : Equation1019 G) : Equation833 G := λ x y => h x x y x x y
theorem Equation1222_implies_Equation1036 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1036 G := λ x y => h x x y x x y
theorem Equation1425_implies_Equation1239 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1239 G := λ x y => h x x y x x y
theorem Equation1628_implies_Equation1442 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1442 G := λ x y => h x x y x x y
theorem Equation1831_implies_Equation1645 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1645 G := λ x y => h x x y x x y
theorem Equation2034_implies_Equation1848 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1848 G := λ x y => h x x y x x y
theorem Equation2237_implies_Equation2051 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2051 G := λ x y => h x x y x x y
theorem Equation2440_implies_Equation2254 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2254 G := λ x y => h x x y x x y
theorem Equation2643_implies_Equation2457 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2457 G := λ x y => h x x y x x y
theorem Equation2846_implies_Equation2660 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2660 G := λ x y => h x x y x x y
theorem Equation3049_implies_Equation2863 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2863 G := λ x y => h x x y x x y
theorem Equation3252_implies_Equation3066 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3066 G := λ x y => h x x y x x y
theorem Equation3455_implies_Equation3269 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3269 G := λ x y => h x x y x x y
theorem Equation3658_implies_Equation3472 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3472 G := λ x y => h x x y x x y
theorem Equation3861_implies_Equation3675 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3675 G := λ x y => h x x y x x y
theorem Equation4064_implies_Equation3878 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3878 G := λ x y => h x x y x x y
theorem Equation4267_implies_Equation4081 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4081 G := λ x y => h x x y x x y
theorem Equation4582_implies_Equation4396 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4396 G := λ x y => h x x y x x y
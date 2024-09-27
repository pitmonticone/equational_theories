import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation507 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (x ∘ (z ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation710 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((x ∘ z) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation913 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ x) ∘ (z ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1116 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (x ∘ z)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1319 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ x) ∘ z) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1522 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (x ∘ (z ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1725 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((x ∘ z) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1928 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ x)) ∘ (z ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2131 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ x) ∘ (z ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2334 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (x ∘ z))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2537 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ x) ∘ z)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2740 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (x ∘ z)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2943 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ x)) ∘ z) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3146 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ x) ∘ z) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3349 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (x ∘ (z ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3552 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((x ∘ z) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3755 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ x) ∘ (z ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3958 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (x ∘ z)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4161 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ x) ∘ z) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4340 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = x ∘ (z ∘ y)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4476 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (x ∘ z) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4655 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ y = (x ∘ z) ∘ y
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation507 (G : Type*) [Magma G] (h : Equation613 G) : Equation507 G := λ x y z => h x y y x z y
theorem Equation816_implies_Equation710 (G : Type*) [Magma G] (h : Equation816 G) : Equation710 G := λ x y z => h x y y x z y
theorem Equation1019_implies_Equation913 (G : Type*) [Magma G] (h : Equation1019 G) : Equation913 G := λ x y z => h x y y x z y
theorem Equation1222_implies_Equation1116 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1116 G := λ x y z => h x y y x z y
theorem Equation1425_implies_Equation1319 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1319 G := λ x y z => h x y y x z y
theorem Equation1628_implies_Equation1522 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1522 G := λ x y z => h x y y x z y
theorem Equation1831_implies_Equation1725 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1725 G := λ x y z => h x y y x z y
theorem Equation2034_implies_Equation1928 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1928 G := λ x y z => h x y y x z y
theorem Equation2237_implies_Equation2131 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2131 G := λ x y z => h x y y x z y
theorem Equation2440_implies_Equation2334 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2334 G := λ x y z => h x y y x z y
theorem Equation2643_implies_Equation2537 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2537 G := λ x y z => h x y y x z y
theorem Equation2846_implies_Equation2740 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2740 G := λ x y z => h x y y x z y
theorem Equation3049_implies_Equation2943 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2943 G := λ x y z => h x y y x z y
theorem Equation3252_implies_Equation3146 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3146 G := λ x y z => h x y y x z y
theorem Equation3455_implies_Equation3349 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3349 G := λ x y z => h x y y x z y
theorem Equation3658_implies_Equation3552 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3552 G := λ x y z => h x y y x z y
theorem Equation3861_implies_Equation3755 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3755 G := λ x y z => h x y y x z y
theorem Equation4064_implies_Equation3958 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3958 G := λ x y z => h x y y x z y
theorem Equation4267_implies_Equation4161 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4161 G := λ x y z => h x y y x z y
theorem Equation4379_implies_Equation4340 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4340 G := λ x y z => h x y y x z y
theorem Equation4582_implies_Equation4476 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4476 G := λ x y z => h x y y x z y
theorem Equation4694_implies_Equation4655 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4655 G := λ x y z => h x y y x z y
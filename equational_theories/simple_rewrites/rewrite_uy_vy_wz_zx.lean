import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation488 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (z ∘ (y ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation691 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((z ∘ y) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation894 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ z) ∘ (y ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1097 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (z ∘ y)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1300 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ z) ∘ y) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1503 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (z ∘ (y ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1706 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((z ∘ y) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1909 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ z)) ∘ (y ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2112 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ z) ∘ (y ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2315 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (z ∘ y))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2518 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ z) ∘ y)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2721 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (z ∘ y)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2924 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ z)) ∘ y) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3127 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ z) ∘ y) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3330 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (z ∘ (y ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3533 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((z ∘ y) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3736 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ z) ∘ (y ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3939 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (z ∘ y)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4142 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ z) ∘ y) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4331 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = z ∘ (y ∘ y)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4457 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (z ∘ y) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4646 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ y) ∘ x = (z ∘ y) ∘ y
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation488 (G : Type*) [Magma G] (h : Equation613 G) : Equation488 G := λ x y z => h x y x z y y
theorem Equation816_implies_Equation691 (G : Type*) [Magma G] (h : Equation816 G) : Equation691 G := λ x y z => h x y x z y y
theorem Equation1019_implies_Equation894 (G : Type*) [Magma G] (h : Equation1019 G) : Equation894 G := λ x y z => h x y x z y y
theorem Equation1222_implies_Equation1097 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1097 G := λ x y z => h x y x z y y
theorem Equation1425_implies_Equation1300 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1300 G := λ x y z => h x y x z y y
theorem Equation1628_implies_Equation1503 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1503 G := λ x y z => h x y x z y y
theorem Equation1831_implies_Equation1706 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1706 G := λ x y z => h x y x z y y
theorem Equation2034_implies_Equation1909 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1909 G := λ x y z => h x y x z y y
theorem Equation2237_implies_Equation2112 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2112 G := λ x y z => h x y x z y y
theorem Equation2440_implies_Equation2315 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2315 G := λ x y z => h x y x z y y
theorem Equation2643_implies_Equation2518 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2518 G := λ x y z => h x y x z y y
theorem Equation2846_implies_Equation2721 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2721 G := λ x y z => h x y x z y y
theorem Equation3049_implies_Equation2924 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2924 G := λ x y z => h x y x z y y
theorem Equation3252_implies_Equation3127 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3127 G := λ x y z => h x y x z y y
theorem Equation3455_implies_Equation3330 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3330 G := λ x y z => h x y x z y y
theorem Equation3658_implies_Equation3533 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3533 G := λ x y z => h x y x z y y
theorem Equation3861_implies_Equation3736 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3736 G := λ x y z => h x y x z y y
theorem Equation4064_implies_Equation3939 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3939 G := λ x y z => h x y x z y y
theorem Equation4267_implies_Equation4142 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4142 G := λ x y z => h x y x z y y
theorem Equation4379_implies_Equation4331 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4331 G := λ x y z => h x y x z y y
theorem Equation4582_implies_Equation4457 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4457 G := λ x y z => h x y x z y y
theorem Equation4694_implies_Equation4646 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4646 G := λ x y z => h x y x z y y
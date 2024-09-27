import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation557 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (x ∘ w)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation760 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ x) ∘ w))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation963 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (x ∘ w))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1166 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ x)) ∘ w)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1369 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ x) ∘ w)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1572 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (x ∘ w))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1775 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ x) ∘ w)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1978 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (x ∘ w)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2181 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (x ∘ w)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2384 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ x))) ∘ w
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2587 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ x)) ∘ w
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2790 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ x)) ∘ w
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2993 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ x) ∘ w
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3196 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ x) ∘ w
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3399 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (x ∘ w))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3602 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ x) ∘ w)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3805 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (x ∘ w)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4008 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ x)) ∘ w
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4211 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ x) ∘ w
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4363 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = y ∘ (x ∘ w)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4526 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ x) ∘ w
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4678 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (y ∘ x) ∘ w
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation557 (G : Type*) [Magma G] (h : Equation613 G) : Equation557 G := λ x y z w => h x y z y x w
theorem Equation816_implies_Equation760 (G : Type*) [Magma G] (h : Equation816 G) : Equation760 G := λ x y z w => h x y z y x w
theorem Equation1019_implies_Equation963 (G : Type*) [Magma G] (h : Equation1019 G) : Equation963 G := λ x y z w => h x y z y x w
theorem Equation1222_implies_Equation1166 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1166 G := λ x y z w => h x y z y x w
theorem Equation1425_implies_Equation1369 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1369 G := λ x y z w => h x y z y x w
theorem Equation1628_implies_Equation1572 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1572 G := λ x y z w => h x y z y x w
theorem Equation1831_implies_Equation1775 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1775 G := λ x y z w => h x y z y x w
theorem Equation2034_implies_Equation1978 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1978 G := λ x y z w => h x y z y x w
theorem Equation2237_implies_Equation2181 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2181 G := λ x y z w => h x y z y x w
theorem Equation2440_implies_Equation2384 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2384 G := λ x y z w => h x y z y x w
theorem Equation2643_implies_Equation2587 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2587 G := λ x y z w => h x y z y x w
theorem Equation2846_implies_Equation2790 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2790 G := λ x y z w => h x y z y x w
theorem Equation3049_implies_Equation2993 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2993 G := λ x y z w => h x y z y x w
theorem Equation3252_implies_Equation3196 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3196 G := λ x y z w => h x y z y x w
theorem Equation3455_implies_Equation3399 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3399 G := λ x y z w => h x y z y x w
theorem Equation3658_implies_Equation3602 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3602 G := λ x y z w => h x y z y x w
theorem Equation3861_implies_Equation3805 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3805 G := λ x y z w => h x y z y x w
theorem Equation4064_implies_Equation4008 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4008 G := λ x y z w => h x y z y x w
theorem Equation4267_implies_Equation4211 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4211 G := λ x y z w => h x y z y x w
theorem Equation4379_implies_Equation4363 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4363 G := λ x y z w => h x y z y x w
theorem Equation4582_implies_Equation4526 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4526 G := λ x y z w => h x y z y x w
theorem Equation4694_implies_Equation4678 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4678 G := λ x y z w => h x y z y x w
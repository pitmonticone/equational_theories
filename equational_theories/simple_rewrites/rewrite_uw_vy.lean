import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation604 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation807 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation1010 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1213 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1416 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1619 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1822 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2025 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2228 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2431 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2634 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2837 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3040 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3243 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3446 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3649 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3852 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4055 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4258 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4573 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation604 (G : Type*) [Magma G] (h : Equation613 G) : Equation604 G := λ x y z w => h x y z w w y
theorem Equation816_implies_Equation807 (G : Type*) [Magma G] (h : Equation816 G) : Equation807 G := λ x y z w => h x y z w w y
theorem Equation1019_implies_Equation1010 (G : Type*) [Magma G] (h : Equation1019 G) : Equation1010 G := λ x y z w => h x y z w w y
theorem Equation1222_implies_Equation1213 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1213 G := λ x y z w => h x y z w w y
theorem Equation1425_implies_Equation1416 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1416 G := λ x y z w => h x y z w w y
theorem Equation1628_implies_Equation1619 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1619 G := λ x y z w => h x y z w w y
theorem Equation1831_implies_Equation1822 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1822 G := λ x y z w => h x y z w w y
theorem Equation2034_implies_Equation2025 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2025 G := λ x y z w => h x y z w w y
theorem Equation2237_implies_Equation2228 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2228 G := λ x y z w => h x y z w w y
theorem Equation2440_implies_Equation2431 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2431 G := λ x y z w => h x y z w w y
theorem Equation2643_implies_Equation2634 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2634 G := λ x y z w => h x y z w w y
theorem Equation2846_implies_Equation2837 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2837 G := λ x y z w => h x y z w w y
theorem Equation3049_implies_Equation3040 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3040 G := λ x y z w => h x y z w w y
theorem Equation3252_implies_Equation3243 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3243 G := λ x y z w => h x y z w w y
theorem Equation3455_implies_Equation3446 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3446 G := λ x y z w => h x y z w w y
theorem Equation3658_implies_Equation3649 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3649 G := λ x y z w => h x y z w w y
theorem Equation3861_implies_Equation3852 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3852 G := λ x y z w => h x y z w w y
theorem Equation4064_implies_Equation4055 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4055 G := λ x y z w => h x y z w w y
theorem Equation4267_implies_Equation4258 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4258 G := λ x y z w => h x y z w w y
theorem Equation4582_implies_Equation4573 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4573 G := λ x y z w => h x y z w w y
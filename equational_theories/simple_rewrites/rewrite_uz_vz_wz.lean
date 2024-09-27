import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation581 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (z ∘ (z ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation784 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((z ∘ z) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation987 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ z) ∘ (z ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1190 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (z ∘ z)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1393 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ z) ∘ z) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1596 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (z ∘ (z ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1799 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((z ∘ z) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2002 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ z)) ∘ (z ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2205 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ z) ∘ (z ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2408 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (z ∘ z))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2611 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ z) ∘ z)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2814 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (z ∘ z)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3017 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ z)) ∘ z) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3220 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ z) ∘ z) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3423 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (z ∘ (z ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3626 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((z ∘ z) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3829 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ z) ∘ (z ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4032 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (z ∘ z)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4235 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ z) ∘ z) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4550 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (z ∘ z) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation581 (G : Type*) [Magma G] (h : Equation613 G) : Equation581 G := λ x y z => h x y z z z z
theorem Equation816_implies_Equation784 (G : Type*) [Magma G] (h : Equation816 G) : Equation784 G := λ x y z => h x y z z z z
theorem Equation1019_implies_Equation987 (G : Type*) [Magma G] (h : Equation1019 G) : Equation987 G := λ x y z => h x y z z z z
theorem Equation1222_implies_Equation1190 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1190 G := λ x y z => h x y z z z z
theorem Equation1425_implies_Equation1393 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1393 G := λ x y z => h x y z z z z
theorem Equation1628_implies_Equation1596 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1596 G := λ x y z => h x y z z z z
theorem Equation1831_implies_Equation1799 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1799 G := λ x y z => h x y z z z z
theorem Equation2034_implies_Equation2002 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2002 G := λ x y z => h x y z z z z
theorem Equation2237_implies_Equation2205 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2205 G := λ x y z => h x y z z z z
theorem Equation2440_implies_Equation2408 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2408 G := λ x y z => h x y z z z z
theorem Equation2643_implies_Equation2611 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2611 G := λ x y z => h x y z z z z
theorem Equation2846_implies_Equation2814 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2814 G := λ x y z => h x y z z z z
theorem Equation3049_implies_Equation3017 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3017 G := λ x y z => h x y z z z z
theorem Equation3252_implies_Equation3220 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3220 G := λ x y z => h x y z z z z
theorem Equation3455_implies_Equation3423 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3423 G := λ x y z => h x y z z z z
theorem Equation3658_implies_Equation3626 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3626 G := λ x y z => h x y z z z z
theorem Equation3861_implies_Equation3829 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3829 G := λ x y z => h x y z z z z
theorem Equation4064_implies_Equation4032 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4032 G := λ x y z => h x y z z z z
theorem Equation4267_implies_Equation4235 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4235 G := λ x y z => h x y z z z z
theorem Equation4582_implies_Equation4550 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4550 G := λ x y z => h x y z z z z
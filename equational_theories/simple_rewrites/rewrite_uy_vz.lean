import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation595 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation798 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation1001 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1204 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1407 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1610 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1813 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2016 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2219 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2422 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2625 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2828 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3031 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3234 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3437 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3640 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3843 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4046 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4249 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4374 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = w ∘ (y ∘ z)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4564 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4689 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (w ∘ y) ∘ z
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation595 (G : Type*) [Magma G] (h : Equation613 G) : Equation595 G := λ x y z w => h x y z w y z
theorem Equation816_implies_Equation798 (G : Type*) [Magma G] (h : Equation816 G) : Equation798 G := λ x y z w => h x y z w y z
theorem Equation1019_implies_Equation1001 (G : Type*) [Magma G] (h : Equation1019 G) : Equation1001 G := λ x y z w => h x y z w y z
theorem Equation1222_implies_Equation1204 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1204 G := λ x y z w => h x y z w y z
theorem Equation1425_implies_Equation1407 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1407 G := λ x y z w => h x y z w y z
theorem Equation1628_implies_Equation1610 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1610 G := λ x y z w => h x y z w y z
theorem Equation1831_implies_Equation1813 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1813 G := λ x y z w => h x y z w y z
theorem Equation2034_implies_Equation2016 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2016 G := λ x y z w => h x y z w y z
theorem Equation2237_implies_Equation2219 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2219 G := λ x y z w => h x y z w y z
theorem Equation2440_implies_Equation2422 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2422 G := λ x y z w => h x y z w y z
theorem Equation2643_implies_Equation2625 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2625 G := λ x y z w => h x y z w y z
theorem Equation2846_implies_Equation2828 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2828 G := λ x y z w => h x y z w y z
theorem Equation3049_implies_Equation3031 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3031 G := λ x y z w => h x y z w y z
theorem Equation3252_implies_Equation3234 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3234 G := λ x y z w => h x y z w y z
theorem Equation3455_implies_Equation3437 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3437 G := λ x y z w => h x y z w y z
theorem Equation3658_implies_Equation3640 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3640 G := λ x y z w => h x y z w y z
theorem Equation3861_implies_Equation3843 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3843 G := λ x y z w => h x y z w y z
theorem Equation4064_implies_Equation4046 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4046 G := λ x y z w => h x y z w y z
theorem Equation4267_implies_Equation4249 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4249 G := λ x y z w => h x y z w y z
theorem Equation4379_implies_Equation4374 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4374 G := λ x y z w => h x y z w y z
theorem Equation4582_implies_Equation4564 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4564 G := λ x y z w => h x y z w y z
theorem Equation4694_implies_Equation4689 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4689 G := λ x y z w => h x y z w y z
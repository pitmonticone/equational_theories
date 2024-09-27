import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation596 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (y ∘ w)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation799 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ y) ∘ w))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation1002 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (y ∘ w))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1205 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ w)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1408 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ y) ∘ w)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1611 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (y ∘ w))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1814 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ w)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2017 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ w)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2220 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ w)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2423 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ w
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2626 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ w
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2829 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ w
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3032 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ w
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3235 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ w
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3438 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (y ∘ w))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3641 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ y) ∘ w)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3844 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (y ∘ w)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4047 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ y)) ∘ w
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4250 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ y) ∘ w
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4565 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ y) ∘ w
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation596 (G : Type*) [Magma G] (h : Equation613 G) : Equation596 G := λ x y z w => h x y z w y w
theorem Equation816_implies_Equation799 (G : Type*) [Magma G] (h : Equation816 G) : Equation799 G := λ x y z w => h x y z w y w
theorem Equation1019_implies_Equation1002 (G : Type*) [Magma G] (h : Equation1019 G) : Equation1002 G := λ x y z w => h x y z w y w
theorem Equation1222_implies_Equation1205 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1205 G := λ x y z w => h x y z w y w
theorem Equation1425_implies_Equation1408 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1408 G := λ x y z w => h x y z w y w
theorem Equation1628_implies_Equation1611 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1611 G := λ x y z w => h x y z w y w
theorem Equation1831_implies_Equation1814 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1814 G := λ x y z w => h x y z w y w
theorem Equation2034_implies_Equation2017 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2017 G := λ x y z w => h x y z w y w
theorem Equation2237_implies_Equation2220 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2220 G := λ x y z w => h x y z w y w
theorem Equation2440_implies_Equation2423 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2423 G := λ x y z w => h x y z w y w
theorem Equation2643_implies_Equation2626 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2626 G := λ x y z w => h x y z w y w
theorem Equation2846_implies_Equation2829 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2829 G := λ x y z w => h x y z w y w
theorem Equation3049_implies_Equation3032 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3032 G := λ x y z w => h x y z w y w
theorem Equation3252_implies_Equation3235 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3235 G := λ x y z w => h x y z w y w
theorem Equation3455_implies_Equation3438 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3438 G := λ x y z w => h x y z w y w
theorem Equation3658_implies_Equation3641 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3641 G := λ x y z w => h x y z w y w
theorem Equation3861_implies_Equation3844 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3844 G := λ x y z w => h x y z w y w
theorem Equation4064_implies_Equation4047 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4047 G := λ x y z w => h x y z w y w
theorem Equation4267_implies_Equation4250 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4250 G := λ x y z w => h x y z w y w
theorem Equation4582_implies_Equation4565 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4565 G := λ x y z w => h x y z w y w
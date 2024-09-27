import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation580 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (z ∘ (z ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation783 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((z ∘ z) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation986 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ z) ∘ (z ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1189 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (z ∘ z)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1392 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ z) ∘ z) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1595 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (z ∘ (z ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1798 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((z ∘ z) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2001 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ z)) ∘ (z ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2204 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ z) ∘ (z ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2407 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (z ∘ z))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2610 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ z) ∘ z)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2813 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (z ∘ z)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3016 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ z)) ∘ z) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3219 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ z) ∘ z) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3422 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (z ∘ (z ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3625 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((z ∘ z) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3828 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ z) ∘ (z ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4031 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (z ∘ z)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4234 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ z) ∘ z) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4549 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (z ∘ z) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation580 (G : Type*) [Magma G] (h : Equation613 G) : Equation580 G := λ x y z => h x y z z z y
theorem Equation816_implies_Equation783 (G : Type*) [Magma G] (h : Equation816 G) : Equation783 G := λ x y z => h x y z z z y
theorem Equation1019_implies_Equation986 (G : Type*) [Magma G] (h : Equation1019 G) : Equation986 G := λ x y z => h x y z z z y
theorem Equation1222_implies_Equation1189 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1189 G := λ x y z => h x y z z z y
theorem Equation1425_implies_Equation1392 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1392 G := λ x y z => h x y z z z y
theorem Equation1628_implies_Equation1595 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1595 G := λ x y z => h x y z z z y
theorem Equation1831_implies_Equation1798 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1798 G := λ x y z => h x y z z z y
theorem Equation2034_implies_Equation2001 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2001 G := λ x y z => h x y z z z y
theorem Equation2237_implies_Equation2204 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2204 G := λ x y z => h x y z z z y
theorem Equation2440_implies_Equation2407 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2407 G := λ x y z => h x y z z z y
theorem Equation2643_implies_Equation2610 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2610 G := λ x y z => h x y z z z y
theorem Equation2846_implies_Equation2813 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2813 G := λ x y z => h x y z z z y
theorem Equation3049_implies_Equation3016 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3016 G := λ x y z => h x y z z z y
theorem Equation3252_implies_Equation3219 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3219 G := λ x y z => h x y z z z y
theorem Equation3455_implies_Equation3422 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3422 G := λ x y z => h x y z z z y
theorem Equation3658_implies_Equation3625 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3625 G := λ x y z => h x y z z z y
theorem Equation3861_implies_Equation3828 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3828 G := λ x y z => h x y z z z y
theorem Equation4064_implies_Equation4031 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4031 G := λ x y z => h x y z z z y
theorem Equation4267_implies_Equation4234 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4234 G := λ x y z => h x y z z z y
theorem Equation4582_implies_Equation4549 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4549 G := λ x y z => h x y z z z y
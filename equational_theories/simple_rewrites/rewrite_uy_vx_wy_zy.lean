import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation513 (G: Type*) [Magma G] := ∀ x y : G, x = y ∘ (y ∘ (y ∘ (y ∘ x)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation716 (G: Type*) [Magma G] := ∀ x y : G, x = y ∘ (y ∘ ((y ∘ y) ∘ x))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation919 (G: Type*) [Magma G] := ∀ x y : G, x = y ∘ ((y ∘ y) ∘ (y ∘ x))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1122 (G: Type*) [Magma G] := ∀ x y : G, x = y ∘ ((y ∘ (y ∘ y)) ∘ x)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1325 (G: Type*) [Magma G] := ∀ x y : G, x = y ∘ (((y ∘ y) ∘ y) ∘ x)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1528 (G: Type*) [Magma G] := ∀ x y : G, x = (y ∘ y) ∘ (y ∘ (y ∘ x))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1731 (G: Type*) [Magma G] := ∀ x y : G, x = (y ∘ y) ∘ ((y ∘ y) ∘ x)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1934 (G: Type*) [Magma G] := ∀ x y : G, x = (y ∘ (y ∘ y)) ∘ (y ∘ x)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2137 (G: Type*) [Magma G] := ∀ x y : G, x = ((y ∘ y) ∘ y) ∘ (y ∘ x)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2340 (G: Type*) [Magma G] := ∀ x y : G, x = (y ∘ (y ∘ (y ∘ y))) ∘ x
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2543 (G: Type*) [Magma G] := ∀ x y : G, x = (y ∘ ((y ∘ y) ∘ y)) ∘ x
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2746 (G: Type*) [Magma G] := ∀ x y : G, x = ((y ∘ y) ∘ (y ∘ y)) ∘ x
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2949 (G: Type*) [Magma G] := ∀ x y : G, x = ((y ∘ (y ∘ y)) ∘ y) ∘ x
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3152 (G: Type*) [Magma G] := ∀ x y : G, x = (((y ∘ y) ∘ y) ∘ y) ∘ x
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3355 (G: Type*) [Magma G] := ∀ x y : G, x ∘ y = y ∘ (y ∘ (y ∘ x))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3558 (G: Type*) [Magma G] := ∀ x y : G, x ∘ y = y ∘ ((y ∘ y) ∘ x)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3761 (G: Type*) [Magma G] := ∀ x y : G, x ∘ y = (y ∘ y) ∘ (y ∘ x)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3964 (G: Type*) [Magma G] := ∀ x y : G, x ∘ y = (y ∘ (y ∘ y)) ∘ x
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4167 (G: Type*) [Magma G] := ∀ x y : G, x ∘ y = ((y ∘ y) ∘ y) ∘ x
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4482 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (y ∘ y) = (y ∘ y) ∘ x
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation513 (G : Type*) [Magma G] (h : Equation613 G) : Equation513 G := λ x y => h x y y y y x
theorem Equation816_implies_Equation716 (G : Type*) [Magma G] (h : Equation816 G) : Equation716 G := λ x y => h x y y y y x
theorem Equation1019_implies_Equation919 (G : Type*) [Magma G] (h : Equation1019 G) : Equation919 G := λ x y => h x y y y y x
theorem Equation1222_implies_Equation1122 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1122 G := λ x y => h x y y y y x
theorem Equation1425_implies_Equation1325 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1325 G := λ x y => h x y y y y x
theorem Equation1628_implies_Equation1528 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1528 G := λ x y => h x y y y y x
theorem Equation1831_implies_Equation1731 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1731 G := λ x y => h x y y y y x
theorem Equation2034_implies_Equation1934 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1934 G := λ x y => h x y y y y x
theorem Equation2237_implies_Equation2137 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2137 G := λ x y => h x y y y y x
theorem Equation2440_implies_Equation2340 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2340 G := λ x y => h x y y y y x
theorem Equation2643_implies_Equation2543 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2543 G := λ x y => h x y y y y x
theorem Equation2846_implies_Equation2746 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2746 G := λ x y => h x y y y y x
theorem Equation3049_implies_Equation2949 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2949 G := λ x y => h x y y y y x
theorem Equation3252_implies_Equation3152 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3152 G := λ x y => h x y y y y x
theorem Equation3455_implies_Equation3355 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3355 G := λ x y => h x y y y y x
theorem Equation3658_implies_Equation3558 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3558 G := λ x y => h x y y y y x
theorem Equation3861_implies_Equation3761 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3761 G := λ x y => h x y y y y x
theorem Equation4064_implies_Equation3964 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3964 G := λ x y => h x y y y y x
theorem Equation4267_implies_Equation4167 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4167 G := λ x y => h x y y y y x
theorem Equation4582_implies_Equation4482 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4482 G := λ x y => h x y y y y x
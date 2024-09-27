import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation465 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ (x ∘ (x ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation668 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (x ∘ ((x ∘ x) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation871 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ x) ∘ (x ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1074 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((x ∘ (x ∘ x)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1277 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((x ∘ x) ∘ x) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1480 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ (x ∘ (x ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1683 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ x) ∘ ((x ∘ x) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1886 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ x)) ∘ (x ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2089 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ x) ∘ (x ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2292 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (x ∘ (x ∘ x))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2495 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((x ∘ x) ∘ x)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2698 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ x) ∘ (x ∘ x)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2901 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (x ∘ x)) ∘ x) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3104 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ x) ∘ x) ∘ x) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3307 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ (x ∘ (x ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3510 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = x ∘ ((x ∘ x) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3713 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ x) ∘ (x ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3916 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (x ∘ (x ∘ x)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4119 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((x ∘ x) ∘ x) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4434 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ x) = (x ∘ x) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation465 (G : Type*) [Magma G] (h : Equation613 G) : Equation465 G := λ x y z => h x y x x x z
theorem Equation816_implies_Equation668 (G : Type*) [Magma G] (h : Equation816 G) : Equation668 G := λ x y z => h x y x x x z
theorem Equation1019_implies_Equation871 (G : Type*) [Magma G] (h : Equation1019 G) : Equation871 G := λ x y z => h x y x x x z
theorem Equation1222_implies_Equation1074 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1074 G := λ x y z => h x y x x x z
theorem Equation1425_implies_Equation1277 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1277 G := λ x y z => h x y x x x z
theorem Equation1628_implies_Equation1480 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1480 G := λ x y z => h x y x x x z
theorem Equation1831_implies_Equation1683 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1683 G := λ x y z => h x y x x x z
theorem Equation2034_implies_Equation1886 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1886 G := λ x y z => h x y x x x z
theorem Equation2237_implies_Equation2089 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2089 G := λ x y z => h x y x x x z
theorem Equation2440_implies_Equation2292 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2292 G := λ x y z => h x y x x x z
theorem Equation2643_implies_Equation2495 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2495 G := λ x y z => h x y x x x z
theorem Equation2846_implies_Equation2698 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2698 G := λ x y z => h x y x x x z
theorem Equation3049_implies_Equation2901 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2901 G := λ x y z => h x y x x x z
theorem Equation3252_implies_Equation3104 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3104 G := λ x y z => h x y x x x z
theorem Equation3455_implies_Equation3307 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3307 G := λ x y z => h x y x x x z
theorem Equation3658_implies_Equation3510 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3510 G := λ x y z => h x y x x x z
theorem Equation3861_implies_Equation3713 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3713 G := λ x y z => h x y x x x z
theorem Equation4064_implies_Equation3916 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3916 G := λ x y z => h x y x x x z
theorem Equation4267_implies_Equation4119 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4119 G := λ x y z => h x y x x x z
theorem Equation4582_implies_Equation4434 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4434 G := λ x y z => h x y x x x z
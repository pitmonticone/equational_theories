import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation414 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (x ∘ (y ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation617 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ ((x ∘ y) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation820 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ x) ∘ (y ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1023 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ (x ∘ y)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1226 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((x ∘ x) ∘ y) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1429 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (x ∘ (y ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1632 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ ((x ∘ y) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1835 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ x)) ∘ (y ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2038 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ x) ∘ (y ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2241 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ (x ∘ y))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2444 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((x ∘ x) ∘ y)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2647 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ (x ∘ y)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2850 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (x ∘ x)) ∘ y) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3053 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ x) ∘ x) ∘ y) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3256 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (x ∘ (y ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3459 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ ((x ∘ y) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3662 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ x) ∘ (y ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3865 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ (x ∘ y)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4068 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((x ∘ x) ∘ y) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4270 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = x ∘ (y ∘ y)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4383 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = (x ∘ y) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4585 (G: Type*) [Magma G] := ∀ x y : G, (x ∘ x) ∘ x = (x ∘ y) ∘ y
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation414 (G : Type*) [Magma G] (h : Equation613 G) : Equation414 G := λ x y => h x x x x y y
theorem Equation816_implies_Equation617 (G : Type*) [Magma G] (h : Equation816 G) : Equation617 G := λ x y => h x x x x y y
theorem Equation1019_implies_Equation820 (G : Type*) [Magma G] (h : Equation1019 G) : Equation820 G := λ x y => h x x x x y y
theorem Equation1222_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1023 G := λ x y => h x x x x y y
theorem Equation1425_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1226 G := λ x y => h x x x x y y
theorem Equation1628_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1429 G := λ x y => h x x x x y y
theorem Equation1831_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1632 G := λ x y => h x x x x y y
theorem Equation2034_implies_Equation1835 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1835 G := λ x y => h x x x x y y
theorem Equation2237_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2038 G := λ x y => h x x x x y y
theorem Equation2440_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2241 G := λ x y => h x x x x y y
theorem Equation2643_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2444 G := λ x y => h x x x x y y
theorem Equation2846_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2647 G := λ x y => h x x x x y y
theorem Equation3049_implies_Equation2850 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2850 G := λ x y => h x x x x y y
theorem Equation3252_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3053 G := λ x y => h x x x x y y
theorem Equation3455_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3256 G := λ x y => h x x x x y y
theorem Equation3658_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3459 G := λ x y => h x x x x y y
theorem Equation3861_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3662 G := λ x y => h x x x x y y
theorem Equation4064_implies_Equation3865 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3865 G := λ x y => h x x x x y y
theorem Equation4267_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4068 G := λ x y => h x x x x y y
theorem Equation4379_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4270 G := λ x y => h x x x x y y
theorem Equation4582_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4383 G := λ x y => h x x x x y y
theorem Equation4694_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4585 G := λ x y => h x x x x y y
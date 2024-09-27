import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation444 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ (y ∘ (z ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation647 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (y ∘ ((y ∘ z) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation850 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ y) ∘ (z ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1053 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ ((y ∘ (y ∘ z)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1256 (G: Type*) [Magma G] := ∀ x y z : G, x = x ∘ (((y ∘ y) ∘ z) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1459 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ (y ∘ (z ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1662 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ y) ∘ ((y ∘ z) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1865 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ y)) ∘ (z ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2068 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ y) ∘ (z ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2271 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ (y ∘ (y ∘ z))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2474 (G: Type*) [Magma G] := ∀ x y z : G, x = (x ∘ ((y ∘ y) ∘ z)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2677 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ y) ∘ (y ∘ z)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2880 (G: Type*) [Magma G] := ∀ x y z : G, x = ((x ∘ (y ∘ y)) ∘ z) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3083 (G: Type*) [Magma G] := ∀ x y z : G, x = (((x ∘ y) ∘ y) ∘ z) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3286 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ (y ∘ (z ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3489 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = y ∘ ((y ∘ z) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3692 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ y) ∘ (z ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3895 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = (y ∘ (y ∘ z)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4098 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ x = ((y ∘ y) ∘ z) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4297 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = y ∘ (z ∘ z)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4413 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (x ∘ y) = (y ∘ z) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4612 (G: Type*) [Magma G] := ∀ x y z : G, (x ∘ x) ∘ y = (y ∘ z) ∘ z
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation444 (G : Type*) [Magma G] (h : Equation613 G) : Equation444 G := λ x y z => h x x y y z z
theorem Equation816_implies_Equation647 (G : Type*) [Magma G] (h : Equation816 G) : Equation647 G := λ x y z => h x x y y z z
theorem Equation1019_implies_Equation850 (G : Type*) [Magma G] (h : Equation1019 G) : Equation850 G := λ x y z => h x x y y z z
theorem Equation1222_implies_Equation1053 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1053 G := λ x y z => h x x y y z z
theorem Equation1425_implies_Equation1256 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1256 G := λ x y z => h x x y y z z
theorem Equation1628_implies_Equation1459 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1459 G := λ x y z => h x x y y z z
theorem Equation1831_implies_Equation1662 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1662 G := λ x y z => h x x y y z z
theorem Equation2034_implies_Equation1865 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1865 G := λ x y z => h x x y y z z
theorem Equation2237_implies_Equation2068 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2068 G := λ x y z => h x x y y z z
theorem Equation2440_implies_Equation2271 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2271 G := λ x y z => h x x y y z z
theorem Equation2643_implies_Equation2474 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2474 G := λ x y z => h x x y y z z
theorem Equation2846_implies_Equation2677 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2677 G := λ x y z => h x x y y z z
theorem Equation3049_implies_Equation2880 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2880 G := λ x y z => h x x y y z z
theorem Equation3252_implies_Equation3083 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3083 G := λ x y z => h x x y y z z
theorem Equation3455_implies_Equation3286 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3286 G := λ x y z => h x x y y z z
theorem Equation3658_implies_Equation3489 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3489 G := λ x y z => h x x y y z z
theorem Equation3861_implies_Equation3692 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3692 G := λ x y z => h x x y y z z
theorem Equation4064_implies_Equation3895 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3895 G := λ x y z => h x x y y z z
theorem Equation4267_implies_Equation4098 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4098 G := λ x y z => h x x y y z z
theorem Equation4379_implies_Equation4297 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4297 G := λ x y z => h x x y y z z
theorem Equation4582_implies_Equation4413 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4413 G := λ x y z => h x x y y z z
theorem Equation4694_implies_Equation4612 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4612 G := λ x y z => h x x y y z z
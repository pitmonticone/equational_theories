import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation560 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ (y ∘ (y ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation763 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (z ∘ ((y ∘ y) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation966 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ y) ∘ (y ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1169 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((z ∘ (y ∘ y)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1372 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((z ∘ y) ∘ y) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1575 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ (y ∘ (y ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1778 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ z) ∘ ((y ∘ y) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1981 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ y)) ∘ (y ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2184 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ y) ∘ (y ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2387 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (z ∘ (y ∘ y))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2590 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((z ∘ y) ∘ y)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2793 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ z) ∘ (y ∘ y)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2996 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (z ∘ y)) ∘ y) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3199 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ z) ∘ y) ∘ y) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3402 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ (y ∘ (y ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3605 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = z ∘ ((y ∘ y) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3808 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ y) ∘ (y ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4011 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (z ∘ (y ∘ y)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4214 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((z ∘ y) ∘ y) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4529 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ z) = (y ∘ y) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation560 (G : Type*) [Magma G] (h : Equation613 G) : Equation560 G := λ x y z => h x y z y y z
theorem Equation816_implies_Equation763 (G : Type*) [Magma G] (h : Equation816 G) : Equation763 G := λ x y z => h x y z y y z
theorem Equation1019_implies_Equation966 (G : Type*) [Magma G] (h : Equation1019 G) : Equation966 G := λ x y z => h x y z y y z
theorem Equation1222_implies_Equation1169 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1169 G := λ x y z => h x y z y y z
theorem Equation1425_implies_Equation1372 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1372 G := λ x y z => h x y z y y z
theorem Equation1628_implies_Equation1575 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1575 G := λ x y z => h x y z y y z
theorem Equation1831_implies_Equation1778 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1778 G := λ x y z => h x y z y y z
theorem Equation2034_implies_Equation1981 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1981 G := λ x y z => h x y z y y z
theorem Equation2237_implies_Equation2184 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2184 G := λ x y z => h x y z y y z
theorem Equation2440_implies_Equation2387 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2387 G := λ x y z => h x y z y y z
theorem Equation2643_implies_Equation2590 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2590 G := λ x y z => h x y z y y z
theorem Equation2846_implies_Equation2793 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2793 G := λ x y z => h x y z y y z
theorem Equation3049_implies_Equation2996 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2996 G := λ x y z => h x y z y y z
theorem Equation3252_implies_Equation3199 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3199 G := λ x y z => h x y z y y z
theorem Equation3455_implies_Equation3402 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3402 G := λ x y z => h x y z y y z
theorem Equation3658_implies_Equation3605 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3605 G := λ x y z => h x y z y y z
theorem Equation3861_implies_Equation3808 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3808 G := λ x y z => h x y z y y z
theorem Equation4064_implies_Equation4011 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4011 G := λ x y z => h x y z y y z
theorem Equation4267_implies_Equation4214 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4214 G := λ x y z => h x y z y y z
theorem Equation4582_implies_Equation4529 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4529 G := λ x y z => h x y z y y z
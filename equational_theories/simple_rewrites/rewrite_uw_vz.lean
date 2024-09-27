import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation605 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (w ∘ z)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation808 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ w) ∘ z))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation1011 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (w ∘ z))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1214 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ z)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1417 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ w) ∘ z)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1620 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (w ∘ z))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1823 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ z)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2026 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ z)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2229 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ z)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2432 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ z
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2635 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ z
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2838 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ z
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3041 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ z
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3244 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ z
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3447 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (w ∘ z))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3650 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ w) ∘ z)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3853 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (w ∘ z)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4056 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ w)) ∘ z
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4259 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ w) ∘ z
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4574 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ w) ∘ z
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation605 (G : Type*) [Magma G] (h : Equation613 G) : Equation605 G := λ x y z w => h x y z w w z
theorem Equation816_implies_Equation808 (G : Type*) [Magma G] (h : Equation816 G) : Equation808 G := λ x y z w => h x y z w w z
theorem Equation1019_implies_Equation1011 (G : Type*) [Magma G] (h : Equation1019 G) : Equation1011 G := λ x y z w => h x y z w w z
theorem Equation1222_implies_Equation1214 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1214 G := λ x y z w => h x y z w w z
theorem Equation1425_implies_Equation1417 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1417 G := λ x y z w => h x y z w w z
theorem Equation1628_implies_Equation1620 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1620 G := λ x y z w => h x y z w w z
theorem Equation1831_implies_Equation1823 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1823 G := λ x y z w => h x y z w w z
theorem Equation2034_implies_Equation2026 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2026 G := λ x y z w => h x y z w w z
theorem Equation2237_implies_Equation2229 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2229 G := λ x y z w => h x y z w w z
theorem Equation2440_implies_Equation2432 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2432 G := λ x y z w => h x y z w w z
theorem Equation2643_implies_Equation2635 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2635 G := λ x y z w => h x y z w w z
theorem Equation2846_implies_Equation2838 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2838 G := λ x y z w => h x y z w w z
theorem Equation3049_implies_Equation3041 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3041 G := λ x y z w => h x y z w w z
theorem Equation3252_implies_Equation3244 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3244 G := λ x y z w => h x y z w w z
theorem Equation3455_implies_Equation3447 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3447 G := λ x y z w => h x y z w w z
theorem Equation3658_implies_Equation3650 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3650 G := λ x y z w => h x y z w w z
theorem Equation3861_implies_Equation3853 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3853 G := λ x y z w => h x y z w w z
theorem Equation4064_implies_Equation4056 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4056 G := λ x y z w => h x y z w w z
theorem Equation4267_implies_Equation4259 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4259 G := λ x y z w => h x y z w w z
theorem Equation4582_implies_Equation4574 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4574 G := λ x y z w => h x y z w w z
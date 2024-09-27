import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation591 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (w ∘ (x ∘ w)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation794 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((w ∘ x) ∘ w))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation997 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ w) ∘ (x ∘ w))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1200 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ w)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1403 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ w) ∘ x) ∘ w)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1606 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (w ∘ (x ∘ w))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1809 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ w)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation2012 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ w)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2215 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ w)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2418 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ w
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2621 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ w
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2824 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ w
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3027 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ w
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3230 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ w
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3433 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (w ∘ (x ∘ w))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3636 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((w ∘ x) ∘ w)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3839 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ w) ∘ (x ∘ w)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4042 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (w ∘ x)) ∘ w
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4245 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ w) ∘ x) ∘ w
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4560 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (w ∘ x) ∘ w
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation591 (G : Type*) [Magma G] (h : Equation613 G) : Equation591 G := λ x y z w => h x y z w x w
theorem Equation816_implies_Equation794 (G : Type*) [Magma G] (h : Equation816 G) : Equation794 G := λ x y z w => h x y z w x w
theorem Equation1019_implies_Equation997 (G : Type*) [Magma G] (h : Equation1019 G) : Equation997 G := λ x y z w => h x y z w x w
theorem Equation1222_implies_Equation1200 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1200 G := λ x y z w => h x y z w x w
theorem Equation1425_implies_Equation1403 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1403 G := λ x y z w => h x y z w x w
theorem Equation1628_implies_Equation1606 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1606 G := λ x y z w => h x y z w x w
theorem Equation1831_implies_Equation1809 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1809 G := λ x y z w => h x y z w x w
theorem Equation2034_implies_Equation2012 (G : Type*) [Magma G] (h : Equation2034 G) : Equation2012 G := λ x y z w => h x y z w x w
theorem Equation2237_implies_Equation2215 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2215 G := λ x y z w => h x y z w x w
theorem Equation2440_implies_Equation2418 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2418 G := λ x y z w => h x y z w x w
theorem Equation2643_implies_Equation2621 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2621 G := λ x y z w => h x y z w x w
theorem Equation2846_implies_Equation2824 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2824 G := λ x y z w => h x y z w x w
theorem Equation3049_implies_Equation3027 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3027 G := λ x y z w => h x y z w x w
theorem Equation3252_implies_Equation3230 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3230 G := λ x y z w => h x y z w x w
theorem Equation3455_implies_Equation3433 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3433 G := λ x y z w => h x y z w x w
theorem Equation3658_implies_Equation3636 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3636 G := λ x y z w => h x y z w x w
theorem Equation3861_implies_Equation3839 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3839 G := λ x y z w => h x y z w x w
theorem Equation4064_implies_Equation4042 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4042 G := λ x y z w => h x y z w x w
theorem Equation4267_implies_Equation4245 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4245 G := λ x y z w => h x y z w x w
theorem Equation4582_implies_Equation4560 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4560 G := λ x y z w => h x y z w x w
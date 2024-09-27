import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation528 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ (z ∘ (z ∘ x)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation731 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (y ∘ ((z ∘ z) ∘ x))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation934 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ z) ∘ (z ∘ x))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1137 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ ((y ∘ (z ∘ z)) ∘ x)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1340 (G: Type*) [Magma G] := ∀ x y z : G, x = y ∘ (((y ∘ z) ∘ z) ∘ x)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1543 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ (z ∘ (z ∘ x))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1746 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ y) ∘ ((z ∘ z) ∘ x)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1949 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ z)) ∘ (z ∘ x)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2152 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ z) ∘ (z ∘ x)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2355 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ (y ∘ (z ∘ z))) ∘ x
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2558 (G: Type*) [Magma G] := ∀ x y z : G, x = (y ∘ ((y ∘ z) ∘ z)) ∘ x
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2761 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ y) ∘ (z ∘ z)) ∘ x
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2964 (G: Type*) [Magma G] := ∀ x y z : G, x = ((y ∘ (y ∘ z)) ∘ z) ∘ x
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3167 (G: Type*) [Magma G] := ∀ x y z : G, x = (((y ∘ y) ∘ z) ∘ z) ∘ x
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3370 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ (z ∘ (z ∘ x))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3573 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = y ∘ ((z ∘ z) ∘ x)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3776 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ z) ∘ (z ∘ x)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3979 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = (y ∘ (z ∘ z)) ∘ x
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4182 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ y = ((y ∘ z) ∘ z) ∘ x
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4497 (G: Type*) [Magma G] := ∀ x y z : G, x ∘ (y ∘ y) = (z ∘ z) ∘ x
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation528 (G : Type*) [Magma G] (h : Equation613 G) : Equation528 G := λ x y z => h x y y z z x
theorem Equation816_implies_Equation731 (G : Type*) [Magma G] (h : Equation816 G) : Equation731 G := λ x y z => h x y y z z x
theorem Equation1019_implies_Equation934 (G : Type*) [Magma G] (h : Equation1019 G) : Equation934 G := λ x y z => h x y y z z x
theorem Equation1222_implies_Equation1137 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1137 G := λ x y z => h x y y z z x
theorem Equation1425_implies_Equation1340 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1340 G := λ x y z => h x y y z z x
theorem Equation1628_implies_Equation1543 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1543 G := λ x y z => h x y y z z x
theorem Equation1831_implies_Equation1746 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1746 G := λ x y z => h x y y z z x
theorem Equation2034_implies_Equation1949 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1949 G := λ x y z => h x y y z z x
theorem Equation2237_implies_Equation2152 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2152 G := λ x y z => h x y y z z x
theorem Equation2440_implies_Equation2355 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2355 G := λ x y z => h x y y z z x
theorem Equation2643_implies_Equation2558 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2558 G := λ x y z => h x y y z z x
theorem Equation2846_implies_Equation2761 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2761 G := λ x y z => h x y y z z x
theorem Equation3049_implies_Equation2964 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2964 G := λ x y z => h x y y z z x
theorem Equation3252_implies_Equation3167 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3167 G := λ x y z => h x y y z z x
theorem Equation3455_implies_Equation3370 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3370 G := λ x y z => h x y y z z x
theorem Equation3658_implies_Equation3573 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3573 G := λ x y z => h x y y z z x
theorem Equation3861_implies_Equation3776 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3776 G := λ x y z => h x y y z z x
theorem Equation4064_implies_Equation3979 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3979 G := λ x y z => h x y y z z x
theorem Equation4267_implies_Equation4182 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4182 G := λ x y z => h x y y z z x
theorem Equation4582_implies_Equation4497 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4497 G := λ x y z => h x y y z z x
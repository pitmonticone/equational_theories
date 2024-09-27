import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation533 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ (z ∘ (w ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation736 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (y ∘ ((z ∘ w) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation939 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ z) ∘ (w ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1142 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1345 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((y ∘ z) ∘ w) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1548 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ (z ∘ (w ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1751 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1954 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2157 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2360 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2563 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2766 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2969 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3172 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3375 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ (z ∘ (w ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3578 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = y ∘ ((z ∘ w) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3781 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ z) ∘ (w ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3984 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (y ∘ (z ∘ w)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4187 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((y ∘ z) ∘ w) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4354 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = z ∘ (w ∘ y)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4502 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ y) = (z ∘ w) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4669 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ y = (z ∘ w) ∘ y
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation533 (G : Type*) [Magma G] (h : Equation613 G) : Equation533 G := λ x y z w => h x y y z w y
theorem Equation816_implies_Equation736 (G : Type*) [Magma G] (h : Equation816 G) : Equation736 G := λ x y z w => h x y y z w y
theorem Equation1019_implies_Equation939 (G : Type*) [Magma G] (h : Equation1019 G) : Equation939 G := λ x y z w => h x y y z w y
theorem Equation1222_implies_Equation1142 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1142 G := λ x y z w => h x y y z w y
theorem Equation1425_implies_Equation1345 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1345 G := λ x y z w => h x y y z w y
theorem Equation1628_implies_Equation1548 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1548 G := λ x y z w => h x y y z w y
theorem Equation1831_implies_Equation1751 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1751 G := λ x y z w => h x y y z w y
theorem Equation2034_implies_Equation1954 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1954 G := λ x y z w => h x y y z w y
theorem Equation2237_implies_Equation2157 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2157 G := λ x y z w => h x y y z w y
theorem Equation2440_implies_Equation2360 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2360 G := λ x y z w => h x y y z w y
theorem Equation2643_implies_Equation2563 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2563 G := λ x y z w => h x y y z w y
theorem Equation2846_implies_Equation2766 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2766 G := λ x y z w => h x y y z w y
theorem Equation3049_implies_Equation2969 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2969 G := λ x y z w => h x y y z w y
theorem Equation3252_implies_Equation3172 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3172 G := λ x y z w => h x y y z w y
theorem Equation3455_implies_Equation3375 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3375 G := λ x y z w => h x y y z w y
theorem Equation3658_implies_Equation3578 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3578 G := λ x y z w => h x y y z w y
theorem Equation3861_implies_Equation3781 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3781 G := λ x y z w => h x y y z w y
theorem Equation4064_implies_Equation3984 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3984 G := λ x y z w => h x y y z w y
theorem Equation4267_implies_Equation4187 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4187 G := λ x y z w => h x y y z w y
theorem Equation4379_implies_Equation4354 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4354 G := λ x y z w => h x y y z w y
theorem Equation4582_implies_Equation4502 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4502 G := λ x y z w => h x y y z w y
theorem Equation4694_implies_Equation4669 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4669 G := λ x y z w => h x y y z w y
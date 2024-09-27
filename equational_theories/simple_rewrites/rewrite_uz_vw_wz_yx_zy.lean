import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation457 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ (z ∘ (z ∘ w)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation660 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (y ∘ ((z ∘ z) ∘ w))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation863 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ z) ∘ (z ∘ w))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1066 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ ((y ∘ (z ∘ z)) ∘ w)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1269 (G: Type*) [Magma G] := ∀ x y z w : G, x = x ∘ (((y ∘ z) ∘ z) ∘ w)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1472 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ (z ∘ (z ∘ w))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1675 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ y) ∘ ((z ∘ z) ∘ w)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1878 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ z)) ∘ (z ∘ w)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2081 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ z) ∘ (z ∘ w)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2284 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ (y ∘ (z ∘ z))) ∘ w
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2487 (G: Type*) [Magma G] := ∀ x y z w : G, x = (x ∘ ((y ∘ z) ∘ z)) ∘ w
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2690 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ y) ∘ (z ∘ z)) ∘ w
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2893 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((x ∘ (y ∘ z)) ∘ z) ∘ w
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3096 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((x ∘ y) ∘ z) ∘ z) ∘ w
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3299 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ (z ∘ (z ∘ w))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3502 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = y ∘ ((z ∘ z) ∘ w)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3705 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ z) ∘ (z ∘ w)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3908 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = (y ∘ (z ∘ z)) ∘ w
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4111 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ x = ((y ∘ z) ∘ z) ∘ w
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4308 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = z ∘ (z ∘ w)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4426 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (x ∘ y) = (z ∘ z) ∘ w
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4623 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ x) ∘ y = (z ∘ z) ∘ w
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation457 (G : Type*) [Magma G] (h : Equation613 G) : Equation457 G := λ x y z w => h x x y z z w
theorem Equation816_implies_Equation660 (G : Type*) [Magma G] (h : Equation816 G) : Equation660 G := λ x y z w => h x x y z z w
theorem Equation1019_implies_Equation863 (G : Type*) [Magma G] (h : Equation1019 G) : Equation863 G := λ x y z w => h x x y z z w
theorem Equation1222_implies_Equation1066 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1066 G := λ x y z w => h x x y z z w
theorem Equation1425_implies_Equation1269 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1269 G := λ x y z w => h x x y z z w
theorem Equation1628_implies_Equation1472 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1472 G := λ x y z w => h x x y z z w
theorem Equation1831_implies_Equation1675 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1675 G := λ x y z w => h x x y z z w
theorem Equation2034_implies_Equation1878 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1878 G := λ x y z w => h x x y z z w
theorem Equation2237_implies_Equation2081 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2081 G := λ x y z w => h x x y z z w
theorem Equation2440_implies_Equation2284 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2284 G := λ x y z w => h x x y z z w
theorem Equation2643_implies_Equation2487 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2487 G := λ x y z w => h x x y z z w
theorem Equation2846_implies_Equation2690 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2690 G := λ x y z w => h x x y z z w
theorem Equation3049_implies_Equation2893 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2893 G := λ x y z w => h x x y z z w
theorem Equation3252_implies_Equation3096 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3096 G := λ x y z w => h x x y z z w
theorem Equation3455_implies_Equation3299 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3299 G := λ x y z w => h x x y z z w
theorem Equation3658_implies_Equation3502 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3502 G := λ x y z w => h x x y z z w
theorem Equation3861_implies_Equation3705 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3705 G := λ x y z w => h x x y z z w
theorem Equation4064_implies_Equation3908 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3908 G := λ x y z w => h x x y z z w
theorem Equation4267_implies_Equation4111 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4111 G := λ x y z w => h x x y z z w
theorem Equation4379_implies_Equation4308 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4308 G := λ x y z w => h x x y z z w
theorem Equation4582_implies_Equation4426 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4426 G := λ x y z w => h x x y z z w
theorem Equation4694_implies_Equation4623 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4623 G := λ x y z w => h x x y z z w
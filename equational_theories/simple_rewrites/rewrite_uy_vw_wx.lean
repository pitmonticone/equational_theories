import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation544 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (x ∘ (y ∘ w)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation747 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((x ∘ y) ∘ w))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation950 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ x) ∘ (y ∘ w))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1153 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (x ∘ y)) ∘ w)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1356 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ x) ∘ y) ∘ w)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1559 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (x ∘ (y ∘ w))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1762 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((x ∘ y) ∘ w)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1965 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ x)) ∘ (y ∘ w)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2168 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ x) ∘ (y ∘ w)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2371 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (x ∘ y))) ∘ w
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2574 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ x) ∘ y)) ∘ w
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2777 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (x ∘ y)) ∘ w
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2980 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ x)) ∘ y) ∘ w
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3183 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ x) ∘ y) ∘ w
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3386 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (x ∘ (y ∘ w))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3589 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((x ∘ y) ∘ w)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3792 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ x) ∘ (y ∘ w)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3995 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (x ∘ y)) ∘ w
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4198 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ x) ∘ y) ∘ w
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4357 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = x ∘ (y ∘ w)
def Equation4379 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = w ∘ (u ∘ v)
def Equation4513 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (x ∘ y) ∘ w
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
def Equation4672 (G: Type*) [Magma G] := ∀ x y z w : G, (x ∘ y) ∘ z = (x ∘ y) ∘ w
def Equation4694 (G: Type*) [Magma G] := ∀ x y z w u v : G, (x ∘ y) ∘ z = (w ∘ u) ∘ v
theorem Equation613_implies_Equation544 (G : Type*) [Magma G] (h : Equation613 G) : Equation544 G := λ x y z w => h x y z x y w
theorem Equation816_implies_Equation747 (G : Type*) [Magma G] (h : Equation816 G) : Equation747 G := λ x y z w => h x y z x y w
theorem Equation1019_implies_Equation950 (G : Type*) [Magma G] (h : Equation1019 G) : Equation950 G := λ x y z w => h x y z x y w
theorem Equation1222_implies_Equation1153 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1153 G := λ x y z w => h x y z x y w
theorem Equation1425_implies_Equation1356 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1356 G := λ x y z w => h x y z x y w
theorem Equation1628_implies_Equation1559 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1559 G := λ x y z w => h x y z x y w
theorem Equation1831_implies_Equation1762 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1762 G := λ x y z w => h x y z x y w
theorem Equation2034_implies_Equation1965 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1965 G := λ x y z w => h x y z x y w
theorem Equation2237_implies_Equation2168 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2168 G := λ x y z w => h x y z x y w
theorem Equation2440_implies_Equation2371 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2371 G := λ x y z w => h x y z x y w
theorem Equation2643_implies_Equation2574 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2574 G := λ x y z w => h x y z x y w
theorem Equation2846_implies_Equation2777 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2777 G := λ x y z w => h x y z x y w
theorem Equation3049_implies_Equation2980 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2980 G := λ x y z w => h x y z x y w
theorem Equation3252_implies_Equation3183 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3183 G := λ x y z w => h x y z x y w
theorem Equation3455_implies_Equation3386 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3386 G := λ x y z w => h x y z x y w
theorem Equation3658_implies_Equation3589 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3589 G := λ x y z w => h x y z x y w
theorem Equation3861_implies_Equation3792 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3792 G := λ x y z w => h x y z x y w
theorem Equation4064_implies_Equation3995 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3995 G := λ x y z w => h x y z x y w
theorem Equation4267_implies_Equation4198 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4198 G := λ x y z w => h x y z x y w
theorem Equation4379_implies_Equation4357 (G : Type*) [Magma G] (h : Equation4379 G) : Equation4357 G := λ x y z w => h x y z x y w
theorem Equation4582_implies_Equation4513 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4513 G := λ x y z w => h x y z x y w
theorem Equation4694_implies_Equation4672 (G : Type*) [Magma G] (h : Equation4694 G) : Equation4672 G := λ x y z w => h x y z x y w
import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation567 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ (y ∘ (w ∘ y)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation770 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (z ∘ ((y ∘ w) ∘ y))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation973 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ y) ∘ (w ∘ y))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1176 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ y)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1379 (G: Type*) [Magma G] := ∀ x y z w : G, x = y ∘ (((z ∘ y) ∘ w) ∘ y)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1582 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ (y ∘ (w ∘ y))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1785 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ y)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1988 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ y)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2191 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ y)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2394 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ y
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2597 (G: Type*) [Magma G] := ∀ x y z w : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ y
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2800 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ y
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation3003 (G: Type*) [Magma G] := ∀ x y z w : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ y
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3206 (G: Type*) [Magma G] := ∀ x y z w : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ y
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3409 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ (y ∘ (w ∘ y))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3612 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = z ∘ ((y ∘ w) ∘ y)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3815 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ y) ∘ (w ∘ y)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation4018 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = (z ∘ (y ∘ w)) ∘ y
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4221 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ y = ((z ∘ y) ∘ w) ∘ y
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4536 (G: Type*) [Magma G] := ∀ x y z w : G, x ∘ (y ∘ z) = (y ∘ w) ∘ y
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation567 (G : Type*) [Magma G] (h : Equation613 G) : Equation567 G := λ x y z w => h x y z y w y
theorem Equation816_implies_Equation770 (G : Type*) [Magma G] (h : Equation816 G) : Equation770 G := λ x y z w => h x y z y w y
theorem Equation1019_implies_Equation973 (G : Type*) [Magma G] (h : Equation1019 G) : Equation973 G := λ x y z w => h x y z y w y
theorem Equation1222_implies_Equation1176 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1176 G := λ x y z w => h x y z y w y
theorem Equation1425_implies_Equation1379 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1379 G := λ x y z w => h x y z y w y
theorem Equation1628_implies_Equation1582 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1582 G := λ x y z w => h x y z y w y
theorem Equation1831_implies_Equation1785 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1785 G := λ x y z w => h x y z y w y
theorem Equation2034_implies_Equation1988 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1988 G := λ x y z w => h x y z y w y
theorem Equation2237_implies_Equation2191 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2191 G := λ x y z w => h x y z y w y
theorem Equation2440_implies_Equation2394 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2394 G := λ x y z w => h x y z y w y
theorem Equation2643_implies_Equation2597 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2597 G := λ x y z w => h x y z y w y
theorem Equation2846_implies_Equation2800 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2800 G := λ x y z w => h x y z y w y
theorem Equation3049_implies_Equation3003 (G : Type*) [Magma G] (h : Equation3049 G) : Equation3003 G := λ x y z w => h x y z y w y
theorem Equation3252_implies_Equation3206 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3206 G := λ x y z w => h x y z y w y
theorem Equation3455_implies_Equation3409 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3409 G := λ x y z w => h x y z y w y
theorem Equation3658_implies_Equation3612 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3612 G := λ x y z w => h x y z y w y
theorem Equation3861_implies_Equation3815 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3815 G := λ x y z w => h x y z y w y
theorem Equation4064_implies_Equation4018 (G : Type*) [Magma G] (h : Equation4064 G) : Equation4018 G := λ x y z w => h x y z y w y
theorem Equation4267_implies_Equation4221 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4221 G := λ x y z w => h x y z y w y
theorem Equation4582_implies_Equation4536 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4536 G := λ x y z w => h x y z y w y
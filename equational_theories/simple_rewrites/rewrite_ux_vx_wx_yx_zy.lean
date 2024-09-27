import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation426 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (y ∘ (x ∘ (x ∘ x)))
def Equation613 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ (w ∘ (u ∘ v)))
def Equation629 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (y ∘ ((x ∘ x) ∘ x))
def Equation816 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (z ∘ ((w ∘ u) ∘ v))
def Equation832 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((y ∘ x) ∘ (x ∘ x))
def Equation1019 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ w) ∘ (u ∘ v))
def Equation1035 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((y ∘ (x ∘ x)) ∘ x)
def Equation1222 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ v)
def Equation1238 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((y ∘ x) ∘ x) ∘ x)
def Equation1425 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = y ∘ (((z ∘ w) ∘ u) ∘ v)
def Equation1441 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ y) ∘ (x ∘ (x ∘ x))
def Equation1628 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ (w ∘ (u ∘ v))
def Equation1644 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ y) ∘ ((x ∘ x) ∘ x)
def Equation1831 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ v)
def Equation1847 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (y ∘ x)) ∘ (x ∘ x)
def Equation2034 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ v)
def Equation2050 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ y) ∘ x) ∘ (x ∘ x)
def Equation2237 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ v)
def Equation2253 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (y ∘ (x ∘ x))) ∘ x
def Equation2440 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ v
def Equation2456 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((y ∘ x) ∘ x)) ∘ x
def Equation2643 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ v
def Equation2659 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ y) ∘ (x ∘ x)) ∘ x
def Equation2846 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ v
def Equation2862 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (y ∘ x)) ∘ x) ∘ x
def Equation3049 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ v
def Equation3065 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ y) ∘ x) ∘ x) ∘ x
def Equation3252 (G: Type*) [Magma G] := ∀ x y z w u v : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ v
def Equation3268 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = y ∘ (x ∘ (x ∘ x))
def Equation3455 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ (w ∘ (u ∘ v))
def Equation3471 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = y ∘ ((x ∘ x) ∘ x)
def Equation3658 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = z ∘ ((w ∘ u) ∘ v)
def Equation3674 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (y ∘ x) ∘ (x ∘ x)
def Equation3861 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ w) ∘ (u ∘ v)
def Equation3877 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (y ∘ (x ∘ x)) ∘ x
def Equation4064 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = (z ∘ (w ∘ u)) ∘ v
def Equation4080 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((y ∘ x) ∘ x) ∘ x
def Equation4267 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ y = ((z ∘ w) ∘ u) ∘ v
def Equation4395 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ y) = (x ∘ x) ∘ x
def Equation4582 (G: Type*) [Magma G] := ∀ x y z w u v : G, x ∘ (y ∘ z) = (w ∘ u) ∘ v
theorem Equation613_implies_Equation426 (G : Type*) [Magma G] (h : Equation613 G) : Equation426 G := λ x y => h x x y x x x
theorem Equation816_implies_Equation629 (G : Type*) [Magma G] (h : Equation816 G) : Equation629 G := λ x y => h x x y x x x
theorem Equation1019_implies_Equation832 (G : Type*) [Magma G] (h : Equation1019 G) : Equation832 G := λ x y => h x x y x x x
theorem Equation1222_implies_Equation1035 (G : Type*) [Magma G] (h : Equation1222 G) : Equation1035 G := λ x y => h x x y x x x
theorem Equation1425_implies_Equation1238 (G : Type*) [Magma G] (h : Equation1425 G) : Equation1238 G := λ x y => h x x y x x x
theorem Equation1628_implies_Equation1441 (G : Type*) [Magma G] (h : Equation1628 G) : Equation1441 G := λ x y => h x x y x x x
theorem Equation1831_implies_Equation1644 (G : Type*) [Magma G] (h : Equation1831 G) : Equation1644 G := λ x y => h x x y x x x
theorem Equation2034_implies_Equation1847 (G : Type*) [Magma G] (h : Equation2034 G) : Equation1847 G := λ x y => h x x y x x x
theorem Equation2237_implies_Equation2050 (G : Type*) [Magma G] (h : Equation2237 G) : Equation2050 G := λ x y => h x x y x x x
theorem Equation2440_implies_Equation2253 (G : Type*) [Magma G] (h : Equation2440 G) : Equation2253 G := λ x y => h x x y x x x
theorem Equation2643_implies_Equation2456 (G : Type*) [Magma G] (h : Equation2643 G) : Equation2456 G := λ x y => h x x y x x x
theorem Equation2846_implies_Equation2659 (G : Type*) [Magma G] (h : Equation2846 G) : Equation2659 G := λ x y => h x x y x x x
theorem Equation3049_implies_Equation2862 (G : Type*) [Magma G] (h : Equation3049 G) : Equation2862 G := λ x y => h x x y x x x
theorem Equation3252_implies_Equation3065 (G : Type*) [Magma G] (h : Equation3252 G) : Equation3065 G := λ x y => h x x y x x x
theorem Equation3455_implies_Equation3268 (G : Type*) [Magma G] (h : Equation3455 G) : Equation3268 G := λ x y => h x x y x x x
theorem Equation3658_implies_Equation3471 (G : Type*) [Magma G] (h : Equation3658 G) : Equation3471 G := λ x y => h x x y x x x
theorem Equation3861_implies_Equation3674 (G : Type*) [Magma G] (h : Equation3861 G) : Equation3674 G := λ x y => h x x y x x x
theorem Equation4064_implies_Equation3877 (G : Type*) [Magma G] (h : Equation4064 G) : Equation3877 G := λ x y => h x x y x x x
theorem Equation4267_implies_Equation4080 (G : Type*) [Magma G] (h : Equation4267 G) : Equation4080 G := λ x y => h x x y x x x
theorem Equation4582_implies_Equation4395 (G : Type*) [Magma G] (h : Equation4582 G) : Equation4395 G := λ x y => h x x y x x x
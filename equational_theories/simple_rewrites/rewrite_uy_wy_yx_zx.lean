import Mathlib.Data.Nat.Defs
import Mathlib.Tactic


universe u

class Magma (α : Type u) where
  /-- `a ∘ b` computes a binary operation of `a` and `b`. -/
  op : α → α → α

@[inherit_doc] infixl:65 " ∘ "   => Magma.op


/- List of equational laws being studied -/
def Equation50 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (y ∘ y))
def Equation98 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ u))
def Equation102 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ y) ∘ y)
def Equation150 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ u)
def Equation154 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (y ∘ y)
def Equation202 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ u)
def Equation206 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ y)) ∘ y
def Equation254 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ u
def Equation258 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ y) ∘ y
def Equation306 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ u
def Equation310 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (y ∘ y)
def Equation358 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ u)
def Equation362 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ y) ∘ y
def Equation410 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ u
def Equation414 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (x ∘ (y ∘ y)))
def Equation417 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (y ∘ (x ∘ y)))
def Equation419 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (y ∘ (y ∘ x)))
def Equation420 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ (y ∘ (y ∘ y)))
def Equation462 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation499 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ (z ∘ (w ∘ u)))
def Equation536 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ (z ∘ (w ∘ u)))
def Equation553 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (x ∘ (w ∘ u)))
def Equation570 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (y ∘ (w ∘ u)))
def Equation587 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (z ∘ (w ∘ u)))
def Equation592 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (x ∘ u)))
def Equation597 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (y ∘ u)))
def Equation602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (z ∘ u)))
def Equation607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (w ∘ u)))
def Equation608 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ x)))
def Equation609 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ y)))
def Equation610 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ z)))
def Equation611 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ w)))
def Equation612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ (w ∘ (u ∘ u)))
def Equation617 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ ((x ∘ y) ∘ y))
def Equation620 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ ((y ∘ x) ∘ y))
def Equation622 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ ((y ∘ y) ∘ x))
def Equation623 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (x ∘ ((y ∘ y) ∘ y))
def Equation665 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation702 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (x ∘ ((z ∘ w) ∘ u))
def Equation739 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (y ∘ ((z ∘ w) ∘ u))
def Equation756 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((x ∘ w) ∘ u))
def Equation773 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((y ∘ w) ∘ u))
def Equation790 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((z ∘ w) ∘ u))
def Equation795 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ x) ∘ u))
def Equation800 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ y) ∘ u))
def Equation805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ z) ∘ u))
def Equation810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ w) ∘ u))
def Equation811 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ x))
def Equation812 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ y))
def Equation813 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ z))
def Equation814 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ w))
def Equation815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (z ∘ ((w ∘ u) ∘ u))
def Equation820 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ x) ∘ (y ∘ y))
def Equation823 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ y) ∘ (x ∘ y))
def Equation825 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ y) ∘ (y ∘ x))
def Equation826 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ y) ∘ (y ∘ y))
def Equation868 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation905 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ z) ∘ (w ∘ u))
def Equation942 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ z) ∘ (w ∘ u))
def Equation959 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ x) ∘ (w ∘ u))
def Equation976 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ y) ∘ (w ∘ u))
def Equation993 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ z) ∘ (w ∘ u))
def Equation998 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (x ∘ u))
def Equation1003 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (y ∘ u))
def Equation1008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (z ∘ u))
def Equation1013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (w ∘ u))
def Equation1014 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ x))
def Equation1015 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ y))
def Equation1016 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ z))
def Equation1017 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ w))
def Equation1018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ w) ∘ (u ∘ u))
def Equation1023 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ (x ∘ y)) ∘ y)
def Equation1026 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ (y ∘ x)) ∘ y)
def Equation1028 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ (y ∘ y)) ∘ x)
def Equation1029 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ ((x ∘ (y ∘ y)) ∘ y)
def Equation1071 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1108 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((x ∘ (z ∘ w)) ∘ u)
def Equation1145 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((y ∘ (z ∘ w)) ∘ u)
def Equation1162 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (x ∘ w)) ∘ u)
def Equation1179 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (y ∘ w)) ∘ u)
def Equation1196 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (z ∘ w)) ∘ u)
def Equation1201 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ x)) ∘ u)
def Equation1206 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ y)) ∘ u)
def Equation1211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ z)) ∘ u)
def Equation1216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ w)) ∘ u)
def Equation1217 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ x)
def Equation1218 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ y)
def Equation1219 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ z)
def Equation1220 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ w)
def Equation1221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ ((z ∘ (w ∘ u)) ∘ u)
def Equation1226 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((x ∘ x) ∘ y) ∘ y)
def Equation1229 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((x ∘ y) ∘ x) ∘ y)
def Equation1231 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((x ∘ y) ∘ y) ∘ x)
def Equation1232 (G: Type*) [Magma G] := ∀ x y : G, x = x ∘ (((x ∘ y) ∘ y) ∘ y)
def Equation1274 (G: Type*) [Magma G] := ∀ x y z w u : G, x = x ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1311 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((x ∘ z) ∘ w) ∘ u)
def Equation1348 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((y ∘ z) ∘ w) ∘ u)
def Equation1365 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ x) ∘ w) ∘ u)
def Equation1382 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ y) ∘ w) ∘ u)
def Equation1399 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ z) ∘ w) ∘ u)
def Equation1404 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ x) ∘ u)
def Equation1409 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ y) ∘ u)
def Equation1414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ z) ∘ u)
def Equation1419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ w) ∘ u)
def Equation1420 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ x)
def Equation1421 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ y)
def Equation1422 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ z)
def Equation1423 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ w)
def Equation1424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = y ∘ (((z ∘ w) ∘ u) ∘ u)
def Equation1429 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (x ∘ (y ∘ y))
def Equation1432 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (y ∘ (x ∘ y))
def Equation1434 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (y ∘ (y ∘ x))
def Equation1435 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ (y ∘ (y ∘ y))
def Equation1477 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1514 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ (z ∘ (w ∘ u))
def Equation1551 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ (z ∘ (w ∘ u))
def Equation1568 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (x ∘ (w ∘ u))
def Equation1585 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (y ∘ (w ∘ u))
def Equation1602 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (z ∘ (w ∘ u))
def Equation1607 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (x ∘ u))
def Equation1612 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (y ∘ u))
def Equation1617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (z ∘ u))
def Equation1622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (w ∘ u))
def Equation1623 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ x))
def Equation1624 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ y))
def Equation1625 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ z))
def Equation1626 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ w))
def Equation1627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ (w ∘ (u ∘ u))
def Equation1632 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ ((x ∘ y) ∘ y)
def Equation1635 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ ((y ∘ x) ∘ y)
def Equation1637 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ ((y ∘ y) ∘ x)
def Equation1638 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ x) ∘ ((y ∘ y) ∘ y)
def Equation1680 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1717 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ x) ∘ ((z ∘ w) ∘ u)
def Equation1754 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ y) ∘ ((z ∘ w) ∘ u)
def Equation1771 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((x ∘ w) ∘ u)
def Equation1788 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((y ∘ w) ∘ u)
def Equation1805 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((z ∘ w) ∘ u)
def Equation1810 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ x) ∘ u)
def Equation1815 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ y) ∘ u)
def Equation1820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ z) ∘ u)
def Equation1825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ w) ∘ u)
def Equation1826 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ x)
def Equation1827 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ y)
def Equation1828 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ z)
def Equation1829 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ w)
def Equation1830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ z) ∘ ((w ∘ u) ∘ u)
def Equation1835 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ x)) ∘ (y ∘ y)
def Equation1838 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ y)) ∘ (x ∘ y)
def Equation1840 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ y)) ∘ (y ∘ x)
def Equation1841 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ y)) ∘ (y ∘ y)
def Equation1883 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1920 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ z)) ∘ (w ∘ u)
def Equation1957 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ z)) ∘ (w ∘ u)
def Equation1974 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ x)) ∘ (w ∘ u)
def Equation1991 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ y)) ∘ (w ∘ u)
def Equation2008 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ z)) ∘ (w ∘ u)
def Equation2013 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (x ∘ u)
def Equation2018 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (y ∘ u)
def Equation2023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (z ∘ u)
def Equation2028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (w ∘ u)
def Equation2029 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ x)
def Equation2030 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ y)
def Equation2031 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ z)
def Equation2032 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ w)
def Equation2033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ w)) ∘ (u ∘ u)
def Equation2038 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ x) ∘ (y ∘ y)
def Equation2041 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ y) ∘ (x ∘ y)
def Equation2043 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ y) ∘ (y ∘ x)
def Equation2044 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ y) ∘ (y ∘ y)
def Equation2086 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2123 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ z) ∘ (w ∘ u)
def Equation2160 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ z) ∘ (w ∘ u)
def Equation2177 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ x) ∘ (w ∘ u)
def Equation2194 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ y) ∘ (w ∘ u)
def Equation2211 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ z) ∘ (w ∘ u)
def Equation2216 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (x ∘ u)
def Equation2221 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (y ∘ u)
def Equation2226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (z ∘ u)
def Equation2231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (w ∘ u)
def Equation2232 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ x)
def Equation2233 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ y)
def Equation2234 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ z)
def Equation2235 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ w)
def Equation2236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ w) ∘ (u ∘ u)
def Equation2241 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ (x ∘ y))) ∘ y
def Equation2244 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ (y ∘ x))) ∘ y
def Equation2246 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ (y ∘ y))) ∘ x
def Equation2247 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ (x ∘ (y ∘ y))) ∘ y
def Equation2289 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2326 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (x ∘ (z ∘ w))) ∘ u
def Equation2363 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (y ∘ (z ∘ w))) ∘ u
def Equation2380 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (x ∘ w))) ∘ u
def Equation2397 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (y ∘ w))) ∘ u
def Equation2414 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (z ∘ w))) ∘ u
def Equation2419 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ x))) ∘ u
def Equation2424 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ y))) ∘ u
def Equation2429 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ z))) ∘ u
def Equation2434 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ w))) ∘ u
def Equation2435 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ x
def Equation2436 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ y
def Equation2437 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ z
def Equation2438 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ w
def Equation2439 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ (z ∘ (w ∘ u))) ∘ u
def Equation2444 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((x ∘ x) ∘ y)) ∘ y
def Equation2447 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((x ∘ y) ∘ x)) ∘ y
def Equation2449 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((x ∘ y) ∘ y)) ∘ x
def Equation2450 (G: Type*) [Magma G] := ∀ x y : G, x = (x ∘ ((x ∘ y) ∘ y)) ∘ y
def Equation2492 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (x ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2529 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((x ∘ z) ∘ w)) ∘ u
def Equation2566 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((y ∘ z) ∘ w)) ∘ u
def Equation2583 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ x) ∘ w)) ∘ u
def Equation2600 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ y) ∘ w)) ∘ u
def Equation2617 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ z) ∘ w)) ∘ u
def Equation2622 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ x)) ∘ u
def Equation2627 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ y)) ∘ u
def Equation2632 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ z)) ∘ u
def Equation2637 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ w)) ∘ u
def Equation2638 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ x
def Equation2639 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ y
def Equation2640 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ z
def Equation2641 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ w
def Equation2642 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (y ∘ ((z ∘ w) ∘ u)) ∘ u
def Equation2647 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ (x ∘ y)) ∘ y
def Equation2650 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ (y ∘ x)) ∘ y
def Equation2652 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ (y ∘ y)) ∘ x
def Equation2653 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ x) ∘ (y ∘ y)) ∘ y
def Equation2695 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2732 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ x) ∘ (z ∘ w)) ∘ u
def Equation2769 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ y) ∘ (z ∘ w)) ∘ u
def Equation2786 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (x ∘ w)) ∘ u
def Equation2803 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (y ∘ w)) ∘ u
def Equation2820 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (z ∘ w)) ∘ u
def Equation2825 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ x)) ∘ u
def Equation2830 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ y)) ∘ u
def Equation2835 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ z)) ∘ u
def Equation2840 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ w)) ∘ u
def Equation2841 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ x
def Equation2842 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ y
def Equation2843 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ z
def Equation2844 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ w
def Equation2845 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ z) ∘ (w ∘ u)) ∘ u
def Equation2850 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (x ∘ x)) ∘ y) ∘ y
def Equation2853 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (x ∘ y)) ∘ x) ∘ y
def Equation2855 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (x ∘ y)) ∘ y) ∘ x
def Equation2856 (G: Type*) [Magma G] := ∀ x y : G, x = ((x ∘ (x ∘ y)) ∘ y) ∘ y
def Equation2898 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((x ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2935 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (x ∘ z)) ∘ w) ∘ u
def Equation2972 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (y ∘ z)) ∘ w) ∘ u
def Equation2989 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ x)) ∘ w) ∘ u
def Equation3006 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ y)) ∘ w) ∘ u
def Equation3023 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ z)) ∘ w) ∘ u
def Equation3028 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ x) ∘ u
def Equation3033 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ y) ∘ u
def Equation3038 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ z) ∘ u
def Equation3043 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ w) ∘ u
def Equation3044 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ x
def Equation3045 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ y
def Equation3046 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ z
def Equation3047 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ w
def Equation3048 (G: Type*) [Magma G] := ∀ x y z w u : G, x = ((y ∘ (z ∘ w)) ∘ u) ∘ u
def Equation3053 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ x) ∘ x) ∘ y) ∘ y
def Equation3056 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ x) ∘ y) ∘ x) ∘ y
def Equation3058 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ x) ∘ y) ∘ y) ∘ x
def Equation3059 (G: Type*) [Magma G] := ∀ x y : G, x = (((x ∘ x) ∘ y) ∘ y) ∘ y
def Equation3101 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((x ∘ y) ∘ z) ∘ w) ∘ u
def Equation3138 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ x) ∘ z) ∘ w) ∘ u
def Equation3175 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ y) ∘ z) ∘ w) ∘ u
def Equation3192 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ x) ∘ w) ∘ u
def Equation3209 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ y) ∘ w) ∘ u
def Equation3226 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ z) ∘ w) ∘ u
def Equation3231 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ x) ∘ u
def Equation3236 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ y) ∘ u
def Equation3241 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ z) ∘ u
def Equation3246 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ w) ∘ u
def Equation3247 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ x
def Equation3248 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ y
def Equation3249 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ z
def Equation3250 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ w
def Equation3251 (G: Type*) [Magma G] := ∀ x y z w u : G, x = (((y ∘ z) ∘ w) ∘ u) ∘ u
def Equation3256 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (x ∘ (y ∘ y))
def Equation3259 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (y ∘ (x ∘ y))
def Equation3261 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (y ∘ (y ∘ x))
def Equation3262 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ (y ∘ (y ∘ y))
def Equation3304 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ (z ∘ (w ∘ u))
def Equation3341 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ (z ∘ (w ∘ u))
def Equation3378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ (z ∘ (w ∘ u))
def Equation3395 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (x ∘ (w ∘ u))
def Equation3412 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (y ∘ (w ∘ u))
def Equation3429 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (z ∘ (w ∘ u))
def Equation3434 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (x ∘ u))
def Equation3439 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (y ∘ u))
def Equation3444 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (z ∘ u))
def Equation3449 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (w ∘ u))
def Equation3450 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ x))
def Equation3451 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ y))
def Equation3452 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ z))
def Equation3453 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ w))
def Equation3454 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ (w ∘ (u ∘ u))
def Equation3459 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ ((x ∘ y) ∘ y)
def Equation3462 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ ((y ∘ x) ∘ y)
def Equation3464 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ ((y ∘ y) ∘ x)
def Equation3465 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = x ∘ ((y ∘ y) ∘ y)
def Equation3507 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = y ∘ ((z ∘ w) ∘ u)
def Equation3544 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = x ∘ ((z ∘ w) ∘ u)
def Equation3581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = y ∘ ((z ∘ w) ∘ u)
def Equation3598 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((x ∘ w) ∘ u)
def Equation3615 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((y ∘ w) ∘ u)
def Equation3632 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((z ∘ w) ∘ u)
def Equation3637 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ x) ∘ u)
def Equation3642 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ y) ∘ u)
def Equation3647 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ z) ∘ u)
def Equation3652 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ w) ∘ u)
def Equation3653 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ x)
def Equation3654 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ y)
def Equation3655 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ z)
def Equation3656 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ w)
def Equation3657 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = z ∘ ((w ∘ u) ∘ u)
def Equation3662 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ x) ∘ (y ∘ y)
def Equation3665 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ y) ∘ (x ∘ y)
def Equation3667 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ y) ∘ (y ∘ x)
def Equation3668 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ y) ∘ (y ∘ y)
def Equation3710 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ z) ∘ (w ∘ u)
def Equation3747 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ z) ∘ (w ∘ u)
def Equation3784 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ z) ∘ (w ∘ u)
def Equation3801 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ x) ∘ (w ∘ u)
def Equation3818 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ y) ∘ (w ∘ u)
def Equation3835 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ z) ∘ (w ∘ u)
def Equation3840 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (x ∘ u)
def Equation3845 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (y ∘ u)
def Equation3850 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (z ∘ u)
def Equation3855 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (w ∘ u)
def Equation3856 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ x)
def Equation3857 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ y)
def Equation3858 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ z)
def Equation3859 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ w)
def Equation3860 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ w) ∘ (u ∘ u)
def Equation3865 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ (x ∘ y)) ∘ y
def Equation3868 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ (y ∘ x)) ∘ y
def Equation3870 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ (y ∘ y)) ∘ x
def Equation3871 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = (x ∘ (y ∘ y)) ∘ y
def Equation3913 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = (y ∘ (z ∘ w)) ∘ u
def Equation3950 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (x ∘ (z ∘ w)) ∘ u
def Equation3987 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (y ∘ (z ∘ w)) ∘ u
def Equation4004 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (x ∘ w)) ∘ u
def Equation4021 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (y ∘ w)) ∘ u
def Equation4038 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (z ∘ w)) ∘ u
def Equation4043 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ x)) ∘ u
def Equation4048 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ y)) ∘ u
def Equation4053 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ z)) ∘ u
def Equation4058 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ w)) ∘ u
def Equation4059 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ x
def Equation4060 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ y
def Equation4061 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ z
def Equation4062 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ w
def Equation4063 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = (z ∘ (w ∘ u)) ∘ u
def Equation4068 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((x ∘ x) ∘ y) ∘ y
def Equation4071 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((x ∘ y) ∘ x) ∘ y
def Equation4073 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((x ∘ y) ∘ y) ∘ x
def Equation4074 (G: Type*) [Magma G] := ∀ x y : G, x ∘ x = ((x ∘ y) ∘ y) ∘ y
def Equation4116 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ x = ((y ∘ z) ∘ w) ∘ u
def Equation4153 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((x ∘ z) ∘ w) ∘ u
def Equation4190 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((y ∘ z) ∘ w) ∘ u
def Equation4207 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ x) ∘ w) ∘ u
def Equation4224 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ y) ∘ w) ∘ u
def Equation4241 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ z) ∘ w) ∘ u
def Equation4246 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ x) ∘ u
def Equation4251 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ y) ∘ u
def Equation4256 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ z) ∘ u
def Equation4261 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ w) ∘ u
def Equation4262 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ x
def Equation4263 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ y
def Equation4264 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ z
def Equation4265 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ w
def Equation4266 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ y = ((z ∘ w) ∘ u) ∘ u
def Equation4270 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = x ∘ (y ∘ y)
def Equation4273 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = y ∘ (x ∘ y)
def Equation4275 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = y ∘ (y ∘ x)
def Equation4313 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = z ∘ (w ∘ u)
def Equation4338 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = z ∘ (w ∘ u)
def Equation4356 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = z ∘ (w ∘ u)
def Equation4361 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = x ∘ (w ∘ u)
def Equation4368 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = y ∘ (w ∘ u)
def Equation4373 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = z ∘ (w ∘ u)
def Equation4375 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (y ∘ u)
def Equation4377 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (z ∘ u)
def Equation4378 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = w ∘ (u ∘ z)
def Equation4383 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = (x ∘ y) ∘ y
def Equation4386 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = (y ∘ x) ∘ y
def Equation4388 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = (y ∘ y) ∘ x
def Equation4389 (G: Type*) [Magma G] := ∀ x y : G, x ∘ (x ∘ x) = (y ∘ y) ∘ y
def Equation4431 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (x ∘ y) = (z ∘ w) ∘ u
def Equation4468 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ x) = (z ∘ w) ∘ u
def Equation4505 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ y) = (z ∘ w) ∘ u
def Equation4522 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (x ∘ w) ∘ u
def Equation4539 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (y ∘ w) ∘ u
def Equation4556 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (z ∘ w) ∘ u
def Equation4561 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ x) ∘ u
def Equation4566 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ y) ∘ u
def Equation4571 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ z) ∘ u
def Equation4576 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ w) ∘ u
def Equation4577 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ x
def Equation4578 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ y
def Equation4579 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ z
def Equation4580 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ w
def Equation4581 (G: Type*) [Magma G] := ∀ x y z w u : G, x ∘ (y ∘ z) = (w ∘ u) ∘ u
def Equation4585 (G: Type*) [Magma G] := ∀ x y : G, (x ∘ x) ∘ x = (x ∘ y) ∘ y
def Equation4588 (G: Type*) [Magma G] := ∀ x y : G, (x ∘ x) ∘ x = (y ∘ x) ∘ y
def Equation4590 (G: Type*) [Magma G] := ∀ x y : G, (x ∘ x) ∘ x = (y ∘ y) ∘ x
def Equation4628 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ x) ∘ y = (z ∘ w) ∘ u
def Equation4653 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ x = (z ∘ w) ∘ u
def Equation4671 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ y = (z ∘ w) ∘ u
def Equation4676 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (x ∘ w) ∘ u
def Equation4683 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (y ∘ w) ∘ u
def Equation4688 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (z ∘ w) ∘ u
def Equation4690 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ y) ∘ u
def Equation4692 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ z) ∘ u
def Equation4693 (G: Type*) [Magma G] := ∀ x y z w u : G, (x ∘ y) ∘ z = (w ∘ u) ∘ z
theorem Equation98_implies_Equation50 (G : Type*) [Magma G] (h : Equation98 G) : Equation50 G := λ x y => h x x x y y
theorem Equation150_implies_Equation102 (G : Type*) [Magma G] (h : Equation150 G) : Equation102 G := λ x y => h x x x y y
theorem Equation202_implies_Equation154 (G : Type*) [Magma G] (h : Equation202 G) : Equation154 G := λ x y => h x x x y y
theorem Equation254_implies_Equation206 (G : Type*) [Magma G] (h : Equation254 G) : Equation206 G := λ x y => h x x x y y
theorem Equation306_implies_Equation258 (G : Type*) [Magma G] (h : Equation306 G) : Equation258 G := λ x y => h x x x y y
theorem Equation358_implies_Equation310 (G : Type*) [Magma G] (h : Equation358 G) : Equation310 G := λ x y => h x x x y y
theorem Equation410_implies_Equation362 (G : Type*) [Magma G] (h : Equation410 G) : Equation362 G := λ x y => h x x x y y
theorem Equation462_implies_Equation414 (G : Type*) [Magma G] (h : Equation462 G) : Equation414 G := λ x y => h x x x y y
theorem Equation499_implies_Equation414 (G : Type*) [Magma G] (h : Equation499 G) : Equation414 G := λ x y => h x x x y y
theorem Equation536_implies_Equation414 (G : Type*) [Magma G] (h : Equation536 G) : Equation414 G := λ x y => h x x x y y
theorem Equation553_implies_Equation414 (G : Type*) [Magma G] (h : Equation553 G) : Equation414 G := λ x y => h x x x y y
theorem Equation570_implies_Equation414 (G : Type*) [Magma G] (h : Equation570 G) : Equation414 G := λ x y => h x x x y y
theorem Equation587_implies_Equation414 (G : Type*) [Magma G] (h : Equation587 G) : Equation414 G := λ x y => h x x x y y
theorem Equation592_implies_Equation417 (G : Type*) [Magma G] (h : Equation592 G) : Equation417 G := λ x y => h x x x y y
theorem Equation597_implies_Equation417 (G : Type*) [Magma G] (h : Equation597 G) : Equation417 G := λ x y => h x x x y y
theorem Equation602_implies_Equation417 (G : Type*) [Magma G] (h : Equation602 G) : Equation417 G := λ x y => h x x x y y
theorem Equation607_implies_Equation420 (G : Type*) [Magma G] (h : Equation607 G) : Equation420 G := λ x y => h x x x y y
theorem Equation608_implies_Equation419 (G : Type*) [Magma G] (h : Equation608 G) : Equation419 G := λ x y => h x x x y y
theorem Equation609_implies_Equation419 (G : Type*) [Magma G] (h : Equation609 G) : Equation419 G := λ x y => h x x x y y
theorem Equation610_implies_Equation419 (G : Type*) [Magma G] (h : Equation610 G) : Equation419 G := λ x y => h x x x y y
theorem Equation611_implies_Equation420 (G : Type*) [Magma G] (h : Equation611 G) : Equation420 G := λ x y => h x x x y y
theorem Equation612_implies_Equation420 (G : Type*) [Magma G] (h : Equation612 G) : Equation420 G := λ x y => h x x x y y
theorem Equation665_implies_Equation617 (G : Type*) [Magma G] (h : Equation665 G) : Equation617 G := λ x y => h x x x y y
theorem Equation702_implies_Equation617 (G : Type*) [Magma G] (h : Equation702 G) : Equation617 G := λ x y => h x x x y y
theorem Equation739_implies_Equation617 (G : Type*) [Magma G] (h : Equation739 G) : Equation617 G := λ x y => h x x x y y
theorem Equation756_implies_Equation617 (G : Type*) [Magma G] (h : Equation756 G) : Equation617 G := λ x y => h x x x y y
theorem Equation773_implies_Equation617 (G : Type*) [Magma G] (h : Equation773 G) : Equation617 G := λ x y => h x x x y y
theorem Equation790_implies_Equation617 (G : Type*) [Magma G] (h : Equation790 G) : Equation617 G := λ x y => h x x x y y
theorem Equation795_implies_Equation620 (G : Type*) [Magma G] (h : Equation795 G) : Equation620 G := λ x y => h x x x y y
theorem Equation800_implies_Equation620 (G : Type*) [Magma G] (h : Equation800 G) : Equation620 G := λ x y => h x x x y y
theorem Equation805_implies_Equation620 (G : Type*) [Magma G] (h : Equation805 G) : Equation620 G := λ x y => h x x x y y
theorem Equation810_implies_Equation623 (G : Type*) [Magma G] (h : Equation810 G) : Equation623 G := λ x y => h x x x y y
theorem Equation811_implies_Equation622 (G : Type*) [Magma G] (h : Equation811 G) : Equation622 G := λ x y => h x x x y y
theorem Equation812_implies_Equation622 (G : Type*) [Magma G] (h : Equation812 G) : Equation622 G := λ x y => h x x x y y
theorem Equation813_implies_Equation622 (G : Type*) [Magma G] (h : Equation813 G) : Equation622 G := λ x y => h x x x y y
theorem Equation814_implies_Equation623 (G : Type*) [Magma G] (h : Equation814 G) : Equation623 G := λ x y => h x x x y y
theorem Equation815_implies_Equation623 (G : Type*) [Magma G] (h : Equation815 G) : Equation623 G := λ x y => h x x x y y
theorem Equation868_implies_Equation820 (G : Type*) [Magma G] (h : Equation868 G) : Equation820 G := λ x y => h x x x y y
theorem Equation905_implies_Equation820 (G : Type*) [Magma G] (h : Equation905 G) : Equation820 G := λ x y => h x x x y y
theorem Equation942_implies_Equation820 (G : Type*) [Magma G] (h : Equation942 G) : Equation820 G := λ x y => h x x x y y
theorem Equation959_implies_Equation820 (G : Type*) [Magma G] (h : Equation959 G) : Equation820 G := λ x y => h x x x y y
theorem Equation976_implies_Equation820 (G : Type*) [Magma G] (h : Equation976 G) : Equation820 G := λ x y => h x x x y y
theorem Equation993_implies_Equation820 (G : Type*) [Magma G] (h : Equation993 G) : Equation820 G := λ x y => h x x x y y
theorem Equation998_implies_Equation823 (G : Type*) [Magma G] (h : Equation998 G) : Equation823 G := λ x y => h x x x y y
theorem Equation1003_implies_Equation823 (G : Type*) [Magma G] (h : Equation1003 G) : Equation823 G := λ x y => h x x x y y
theorem Equation1008_implies_Equation823 (G : Type*) [Magma G] (h : Equation1008 G) : Equation823 G := λ x y => h x x x y y
theorem Equation1013_implies_Equation826 (G : Type*) [Magma G] (h : Equation1013 G) : Equation826 G := λ x y => h x x x y y
theorem Equation1014_implies_Equation825 (G : Type*) [Magma G] (h : Equation1014 G) : Equation825 G := λ x y => h x x x y y
theorem Equation1015_implies_Equation825 (G : Type*) [Magma G] (h : Equation1015 G) : Equation825 G := λ x y => h x x x y y
theorem Equation1016_implies_Equation825 (G : Type*) [Magma G] (h : Equation1016 G) : Equation825 G := λ x y => h x x x y y
theorem Equation1017_implies_Equation826 (G : Type*) [Magma G] (h : Equation1017 G) : Equation826 G := λ x y => h x x x y y
theorem Equation1018_implies_Equation826 (G : Type*) [Magma G] (h : Equation1018 G) : Equation826 G := λ x y => h x x x y y
theorem Equation1071_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1071 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1108_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1108 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1145_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1145 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1162_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1162 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1179_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1179 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1196_implies_Equation1023 (G : Type*) [Magma G] (h : Equation1196 G) : Equation1023 G := λ x y => h x x x y y
theorem Equation1201_implies_Equation1026 (G : Type*) [Magma G] (h : Equation1201 G) : Equation1026 G := λ x y => h x x x y y
theorem Equation1206_implies_Equation1026 (G : Type*) [Magma G] (h : Equation1206 G) : Equation1026 G := λ x y => h x x x y y
theorem Equation1211_implies_Equation1026 (G : Type*) [Magma G] (h : Equation1211 G) : Equation1026 G := λ x y => h x x x y y
theorem Equation1216_implies_Equation1029 (G : Type*) [Magma G] (h : Equation1216 G) : Equation1029 G := λ x y => h x x x y y
theorem Equation1217_implies_Equation1028 (G : Type*) [Magma G] (h : Equation1217 G) : Equation1028 G := λ x y => h x x x y y
theorem Equation1218_implies_Equation1028 (G : Type*) [Magma G] (h : Equation1218 G) : Equation1028 G := λ x y => h x x x y y
theorem Equation1219_implies_Equation1028 (G : Type*) [Magma G] (h : Equation1219 G) : Equation1028 G := λ x y => h x x x y y
theorem Equation1220_implies_Equation1029 (G : Type*) [Magma G] (h : Equation1220 G) : Equation1029 G := λ x y => h x x x y y
theorem Equation1221_implies_Equation1029 (G : Type*) [Magma G] (h : Equation1221 G) : Equation1029 G := λ x y => h x x x y y
theorem Equation1274_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1274 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1311_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1311 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1348_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1348 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1365_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1365 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1382_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1382 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1399_implies_Equation1226 (G : Type*) [Magma G] (h : Equation1399 G) : Equation1226 G := λ x y => h x x x y y
theorem Equation1404_implies_Equation1229 (G : Type*) [Magma G] (h : Equation1404 G) : Equation1229 G := λ x y => h x x x y y
theorem Equation1409_implies_Equation1229 (G : Type*) [Magma G] (h : Equation1409 G) : Equation1229 G := λ x y => h x x x y y
theorem Equation1414_implies_Equation1229 (G : Type*) [Magma G] (h : Equation1414 G) : Equation1229 G := λ x y => h x x x y y
theorem Equation1419_implies_Equation1232 (G : Type*) [Magma G] (h : Equation1419 G) : Equation1232 G := λ x y => h x x x y y
theorem Equation1420_implies_Equation1231 (G : Type*) [Magma G] (h : Equation1420 G) : Equation1231 G := λ x y => h x x x y y
theorem Equation1421_implies_Equation1231 (G : Type*) [Magma G] (h : Equation1421 G) : Equation1231 G := λ x y => h x x x y y
theorem Equation1422_implies_Equation1231 (G : Type*) [Magma G] (h : Equation1422 G) : Equation1231 G := λ x y => h x x x y y
theorem Equation1423_implies_Equation1232 (G : Type*) [Magma G] (h : Equation1423 G) : Equation1232 G := λ x y => h x x x y y
theorem Equation1424_implies_Equation1232 (G : Type*) [Magma G] (h : Equation1424 G) : Equation1232 G := λ x y => h x x x y y
theorem Equation1477_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1477 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1514_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1514 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1551_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1551 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1568_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1568 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1585_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1585 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1602_implies_Equation1429 (G : Type*) [Magma G] (h : Equation1602 G) : Equation1429 G := λ x y => h x x x y y
theorem Equation1607_implies_Equation1432 (G : Type*) [Magma G] (h : Equation1607 G) : Equation1432 G := λ x y => h x x x y y
theorem Equation1612_implies_Equation1432 (G : Type*) [Magma G] (h : Equation1612 G) : Equation1432 G := λ x y => h x x x y y
theorem Equation1617_implies_Equation1432 (G : Type*) [Magma G] (h : Equation1617 G) : Equation1432 G := λ x y => h x x x y y
theorem Equation1622_implies_Equation1435 (G : Type*) [Magma G] (h : Equation1622 G) : Equation1435 G := λ x y => h x x x y y
theorem Equation1623_implies_Equation1434 (G : Type*) [Magma G] (h : Equation1623 G) : Equation1434 G := λ x y => h x x x y y
theorem Equation1624_implies_Equation1434 (G : Type*) [Magma G] (h : Equation1624 G) : Equation1434 G := λ x y => h x x x y y
theorem Equation1625_implies_Equation1434 (G : Type*) [Magma G] (h : Equation1625 G) : Equation1434 G := λ x y => h x x x y y
theorem Equation1626_implies_Equation1435 (G : Type*) [Magma G] (h : Equation1626 G) : Equation1435 G := λ x y => h x x x y y
theorem Equation1627_implies_Equation1435 (G : Type*) [Magma G] (h : Equation1627 G) : Equation1435 G := λ x y => h x x x y y
theorem Equation1680_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1680 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1717_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1717 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1754_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1754 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1771_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1771 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1788_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1788 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1805_implies_Equation1632 (G : Type*) [Magma G] (h : Equation1805 G) : Equation1632 G := λ x y => h x x x y y
theorem Equation1810_implies_Equation1635 (G : Type*) [Magma G] (h : Equation1810 G) : Equation1635 G := λ x y => h x x x y y
theorem Equation1815_implies_Equation1635 (G : Type*) [Magma G] (h : Equation1815 G) : Equation1635 G := λ x y => h x x x y y
theorem Equation1820_implies_Equation1635 (G : Type*) [Magma G] (h : Equation1820 G) : Equation1635 G := λ x y => h x x x y y
theorem Equation1825_implies_Equation1638 (G : Type*) [Magma G] (h : Equation1825 G) : Equation1638 G := λ x y => h x x x y y
theorem Equation1826_implies_Equation1637 (G : Type*) [Magma G] (h : Equation1826 G) : Equation1637 G := λ x y => h x x x y y
theorem Equation1827_implies_Equation1637 (G : Type*) [Magma G] (h : Equation1827 G) : Equation1637 G := λ x y => h x x x y y
theorem Equation1828_implies_Equation1637 (G : Type*) [Magma G] (h : Equation1828 G) : Equation1637 G := λ x y => h x x x y y
theorem Equation1829_implies_Equation1638 (G : Type*) [Magma G] (h : Equation1829 G) : Equation1638 G := λ x y => h x x x y y
theorem Equation1830_implies_Equation1638 (G : Type*) [Magma G] (h : Equation1830 G) : Equation1638 G := λ x y => h x x x y y
theorem Equation1883_implies_Equation1835 (G : Type*) [Magma G] (h : Equation1883 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation1920_implies_Equation1835 (G : Type*) [Magma G] (h : Equation1920 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation1957_implies_Equation1835 (G : Type*) [Magma G] (h : Equation1957 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation1974_implies_Equation1835 (G : Type*) [Magma G] (h : Equation1974 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation1991_implies_Equation1835 (G : Type*) [Magma G] (h : Equation1991 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation2008_implies_Equation1835 (G : Type*) [Magma G] (h : Equation2008 G) : Equation1835 G := λ x y => h x x x y y
theorem Equation2013_implies_Equation1838 (G : Type*) [Magma G] (h : Equation2013 G) : Equation1838 G := λ x y => h x x x y y
theorem Equation2018_implies_Equation1838 (G : Type*) [Magma G] (h : Equation2018 G) : Equation1838 G := λ x y => h x x x y y
theorem Equation2023_implies_Equation1838 (G : Type*) [Magma G] (h : Equation2023 G) : Equation1838 G := λ x y => h x x x y y
theorem Equation2028_implies_Equation1841 (G : Type*) [Magma G] (h : Equation2028 G) : Equation1841 G := λ x y => h x x x y y
theorem Equation2029_implies_Equation1840 (G : Type*) [Magma G] (h : Equation2029 G) : Equation1840 G := λ x y => h x x x y y
theorem Equation2030_implies_Equation1840 (G : Type*) [Magma G] (h : Equation2030 G) : Equation1840 G := λ x y => h x x x y y
theorem Equation2031_implies_Equation1840 (G : Type*) [Magma G] (h : Equation2031 G) : Equation1840 G := λ x y => h x x x y y
theorem Equation2032_implies_Equation1841 (G : Type*) [Magma G] (h : Equation2032 G) : Equation1841 G := λ x y => h x x x y y
theorem Equation2033_implies_Equation1841 (G : Type*) [Magma G] (h : Equation2033 G) : Equation1841 G := λ x y => h x x x y y
theorem Equation2086_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2086 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2123_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2123 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2160_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2160 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2177_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2177 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2194_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2194 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2211_implies_Equation2038 (G : Type*) [Magma G] (h : Equation2211 G) : Equation2038 G := λ x y => h x x x y y
theorem Equation2216_implies_Equation2041 (G : Type*) [Magma G] (h : Equation2216 G) : Equation2041 G := λ x y => h x x x y y
theorem Equation2221_implies_Equation2041 (G : Type*) [Magma G] (h : Equation2221 G) : Equation2041 G := λ x y => h x x x y y
theorem Equation2226_implies_Equation2041 (G : Type*) [Magma G] (h : Equation2226 G) : Equation2041 G := λ x y => h x x x y y
theorem Equation2231_implies_Equation2044 (G : Type*) [Magma G] (h : Equation2231 G) : Equation2044 G := λ x y => h x x x y y
theorem Equation2232_implies_Equation2043 (G : Type*) [Magma G] (h : Equation2232 G) : Equation2043 G := λ x y => h x x x y y
theorem Equation2233_implies_Equation2043 (G : Type*) [Magma G] (h : Equation2233 G) : Equation2043 G := λ x y => h x x x y y
theorem Equation2234_implies_Equation2043 (G : Type*) [Magma G] (h : Equation2234 G) : Equation2043 G := λ x y => h x x x y y
theorem Equation2235_implies_Equation2044 (G : Type*) [Magma G] (h : Equation2235 G) : Equation2044 G := λ x y => h x x x y y
theorem Equation2236_implies_Equation2044 (G : Type*) [Magma G] (h : Equation2236 G) : Equation2044 G := λ x y => h x x x y y
theorem Equation2289_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2289 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2326_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2326 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2363_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2363 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2380_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2380 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2397_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2397 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2414_implies_Equation2241 (G : Type*) [Magma G] (h : Equation2414 G) : Equation2241 G := λ x y => h x x x y y
theorem Equation2419_implies_Equation2244 (G : Type*) [Magma G] (h : Equation2419 G) : Equation2244 G := λ x y => h x x x y y
theorem Equation2424_implies_Equation2244 (G : Type*) [Magma G] (h : Equation2424 G) : Equation2244 G := λ x y => h x x x y y
theorem Equation2429_implies_Equation2244 (G : Type*) [Magma G] (h : Equation2429 G) : Equation2244 G := λ x y => h x x x y y
theorem Equation2434_implies_Equation2247 (G : Type*) [Magma G] (h : Equation2434 G) : Equation2247 G := λ x y => h x x x y y
theorem Equation2435_implies_Equation2246 (G : Type*) [Magma G] (h : Equation2435 G) : Equation2246 G := λ x y => h x x x y y
theorem Equation2436_implies_Equation2246 (G : Type*) [Magma G] (h : Equation2436 G) : Equation2246 G := λ x y => h x x x y y
theorem Equation2437_implies_Equation2246 (G : Type*) [Magma G] (h : Equation2437 G) : Equation2246 G := λ x y => h x x x y y
theorem Equation2438_implies_Equation2247 (G : Type*) [Magma G] (h : Equation2438 G) : Equation2247 G := λ x y => h x x x y y
theorem Equation2439_implies_Equation2247 (G : Type*) [Magma G] (h : Equation2439 G) : Equation2247 G := λ x y => h x x x y y
theorem Equation2492_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2492 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2529_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2529 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2566_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2566 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2583_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2583 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2600_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2600 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2617_implies_Equation2444 (G : Type*) [Magma G] (h : Equation2617 G) : Equation2444 G := λ x y => h x x x y y
theorem Equation2622_implies_Equation2447 (G : Type*) [Magma G] (h : Equation2622 G) : Equation2447 G := λ x y => h x x x y y
theorem Equation2627_implies_Equation2447 (G : Type*) [Magma G] (h : Equation2627 G) : Equation2447 G := λ x y => h x x x y y
theorem Equation2632_implies_Equation2447 (G : Type*) [Magma G] (h : Equation2632 G) : Equation2447 G := λ x y => h x x x y y
theorem Equation2637_implies_Equation2450 (G : Type*) [Magma G] (h : Equation2637 G) : Equation2450 G := λ x y => h x x x y y
theorem Equation2638_implies_Equation2449 (G : Type*) [Magma G] (h : Equation2638 G) : Equation2449 G := λ x y => h x x x y y
theorem Equation2639_implies_Equation2449 (G : Type*) [Magma G] (h : Equation2639 G) : Equation2449 G := λ x y => h x x x y y
theorem Equation2640_implies_Equation2449 (G : Type*) [Magma G] (h : Equation2640 G) : Equation2449 G := λ x y => h x x x y y
theorem Equation2641_implies_Equation2450 (G : Type*) [Magma G] (h : Equation2641 G) : Equation2450 G := λ x y => h x x x y y
theorem Equation2642_implies_Equation2450 (G : Type*) [Magma G] (h : Equation2642 G) : Equation2450 G := λ x y => h x x x y y
theorem Equation2695_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2695 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2732_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2732 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2769_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2769 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2786_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2786 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2803_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2803 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2820_implies_Equation2647 (G : Type*) [Magma G] (h : Equation2820 G) : Equation2647 G := λ x y => h x x x y y
theorem Equation2825_implies_Equation2650 (G : Type*) [Magma G] (h : Equation2825 G) : Equation2650 G := λ x y => h x x x y y
theorem Equation2830_implies_Equation2650 (G : Type*) [Magma G] (h : Equation2830 G) : Equation2650 G := λ x y => h x x x y y
theorem Equation2835_implies_Equation2650 (G : Type*) [Magma G] (h : Equation2835 G) : Equation2650 G := λ x y => h x x x y y
theorem Equation2840_implies_Equation2653 (G : Type*) [Magma G] (h : Equation2840 G) : Equation2653 G := λ x y => h x x x y y
theorem Equation2841_implies_Equation2652 (G : Type*) [Magma G] (h : Equation2841 G) : Equation2652 G := λ x y => h x x x y y
theorem Equation2842_implies_Equation2652 (G : Type*) [Magma G] (h : Equation2842 G) : Equation2652 G := λ x y => h x x x y y
theorem Equation2843_implies_Equation2652 (G : Type*) [Magma G] (h : Equation2843 G) : Equation2652 G := λ x y => h x x x y y
theorem Equation2844_implies_Equation2653 (G : Type*) [Magma G] (h : Equation2844 G) : Equation2653 G := λ x y => h x x x y y
theorem Equation2845_implies_Equation2653 (G : Type*) [Magma G] (h : Equation2845 G) : Equation2653 G := λ x y => h x x x y y
theorem Equation2898_implies_Equation2850 (G : Type*) [Magma G] (h : Equation2898 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation2935_implies_Equation2850 (G : Type*) [Magma G] (h : Equation2935 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation2972_implies_Equation2850 (G : Type*) [Magma G] (h : Equation2972 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation2989_implies_Equation2850 (G : Type*) [Magma G] (h : Equation2989 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation3006_implies_Equation2850 (G : Type*) [Magma G] (h : Equation3006 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation3023_implies_Equation2850 (G : Type*) [Magma G] (h : Equation3023 G) : Equation2850 G := λ x y => h x x x y y
theorem Equation3028_implies_Equation2853 (G : Type*) [Magma G] (h : Equation3028 G) : Equation2853 G := λ x y => h x x x y y
theorem Equation3033_implies_Equation2853 (G : Type*) [Magma G] (h : Equation3033 G) : Equation2853 G := λ x y => h x x x y y
theorem Equation3038_implies_Equation2853 (G : Type*) [Magma G] (h : Equation3038 G) : Equation2853 G := λ x y => h x x x y y
theorem Equation3043_implies_Equation2856 (G : Type*) [Magma G] (h : Equation3043 G) : Equation2856 G := λ x y => h x x x y y
theorem Equation3044_implies_Equation2855 (G : Type*) [Magma G] (h : Equation3044 G) : Equation2855 G := λ x y => h x x x y y
theorem Equation3045_implies_Equation2855 (G : Type*) [Magma G] (h : Equation3045 G) : Equation2855 G := λ x y => h x x x y y
theorem Equation3046_implies_Equation2855 (G : Type*) [Magma G] (h : Equation3046 G) : Equation2855 G := λ x y => h x x x y y
theorem Equation3047_implies_Equation2856 (G : Type*) [Magma G] (h : Equation3047 G) : Equation2856 G := λ x y => h x x x y y
theorem Equation3048_implies_Equation2856 (G : Type*) [Magma G] (h : Equation3048 G) : Equation2856 G := λ x y => h x x x y y
theorem Equation3101_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3101 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3138_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3138 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3175_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3175 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3192_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3192 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3209_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3209 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3226_implies_Equation3053 (G : Type*) [Magma G] (h : Equation3226 G) : Equation3053 G := λ x y => h x x x y y
theorem Equation3231_implies_Equation3056 (G : Type*) [Magma G] (h : Equation3231 G) : Equation3056 G := λ x y => h x x x y y
theorem Equation3236_implies_Equation3056 (G : Type*) [Magma G] (h : Equation3236 G) : Equation3056 G := λ x y => h x x x y y
theorem Equation3241_implies_Equation3056 (G : Type*) [Magma G] (h : Equation3241 G) : Equation3056 G := λ x y => h x x x y y
theorem Equation3246_implies_Equation3059 (G : Type*) [Magma G] (h : Equation3246 G) : Equation3059 G := λ x y => h x x x y y
theorem Equation3247_implies_Equation3058 (G : Type*) [Magma G] (h : Equation3247 G) : Equation3058 G := λ x y => h x x x y y
theorem Equation3248_implies_Equation3058 (G : Type*) [Magma G] (h : Equation3248 G) : Equation3058 G := λ x y => h x x x y y
theorem Equation3249_implies_Equation3058 (G : Type*) [Magma G] (h : Equation3249 G) : Equation3058 G := λ x y => h x x x y y
theorem Equation3250_implies_Equation3059 (G : Type*) [Magma G] (h : Equation3250 G) : Equation3059 G := λ x y => h x x x y y
theorem Equation3251_implies_Equation3059 (G : Type*) [Magma G] (h : Equation3251 G) : Equation3059 G := λ x y => h x x x y y
theorem Equation3304_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3304 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3341_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3341 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3378_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3378 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3395_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3395 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3412_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3412 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3429_implies_Equation3256 (G : Type*) [Magma G] (h : Equation3429 G) : Equation3256 G := λ x y => h x x x y y
theorem Equation3434_implies_Equation3259 (G : Type*) [Magma G] (h : Equation3434 G) : Equation3259 G := λ x y => h x x x y y
theorem Equation3439_implies_Equation3259 (G : Type*) [Magma G] (h : Equation3439 G) : Equation3259 G := λ x y => h x x x y y
theorem Equation3444_implies_Equation3259 (G : Type*) [Magma G] (h : Equation3444 G) : Equation3259 G := λ x y => h x x x y y
theorem Equation3449_implies_Equation3262 (G : Type*) [Magma G] (h : Equation3449 G) : Equation3262 G := λ x y => h x x x y y
theorem Equation3450_implies_Equation3261 (G : Type*) [Magma G] (h : Equation3450 G) : Equation3261 G := λ x y => h x x x y y
theorem Equation3451_implies_Equation3261 (G : Type*) [Magma G] (h : Equation3451 G) : Equation3261 G := λ x y => h x x x y y
theorem Equation3452_implies_Equation3261 (G : Type*) [Magma G] (h : Equation3452 G) : Equation3261 G := λ x y => h x x x y y
theorem Equation3453_implies_Equation3262 (G : Type*) [Magma G] (h : Equation3453 G) : Equation3262 G := λ x y => h x x x y y
theorem Equation3454_implies_Equation3262 (G : Type*) [Magma G] (h : Equation3454 G) : Equation3262 G := λ x y => h x x x y y
theorem Equation3507_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3507 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3544_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3544 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3581_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3581 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3598_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3598 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3615_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3615 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3632_implies_Equation3459 (G : Type*) [Magma G] (h : Equation3632 G) : Equation3459 G := λ x y => h x x x y y
theorem Equation3637_implies_Equation3462 (G : Type*) [Magma G] (h : Equation3637 G) : Equation3462 G := λ x y => h x x x y y
theorem Equation3642_implies_Equation3462 (G : Type*) [Magma G] (h : Equation3642 G) : Equation3462 G := λ x y => h x x x y y
theorem Equation3647_implies_Equation3462 (G : Type*) [Magma G] (h : Equation3647 G) : Equation3462 G := λ x y => h x x x y y
theorem Equation3652_implies_Equation3465 (G : Type*) [Magma G] (h : Equation3652 G) : Equation3465 G := λ x y => h x x x y y
theorem Equation3653_implies_Equation3464 (G : Type*) [Magma G] (h : Equation3653 G) : Equation3464 G := λ x y => h x x x y y
theorem Equation3654_implies_Equation3464 (G : Type*) [Magma G] (h : Equation3654 G) : Equation3464 G := λ x y => h x x x y y
theorem Equation3655_implies_Equation3464 (G : Type*) [Magma G] (h : Equation3655 G) : Equation3464 G := λ x y => h x x x y y
theorem Equation3656_implies_Equation3465 (G : Type*) [Magma G] (h : Equation3656 G) : Equation3465 G := λ x y => h x x x y y
theorem Equation3657_implies_Equation3465 (G : Type*) [Magma G] (h : Equation3657 G) : Equation3465 G := λ x y => h x x x y y
theorem Equation3710_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3710 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3747_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3747 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3784_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3784 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3801_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3801 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3818_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3818 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3835_implies_Equation3662 (G : Type*) [Magma G] (h : Equation3835 G) : Equation3662 G := λ x y => h x x x y y
theorem Equation3840_implies_Equation3665 (G : Type*) [Magma G] (h : Equation3840 G) : Equation3665 G := λ x y => h x x x y y
theorem Equation3845_implies_Equation3665 (G : Type*) [Magma G] (h : Equation3845 G) : Equation3665 G := λ x y => h x x x y y
theorem Equation3850_implies_Equation3665 (G : Type*) [Magma G] (h : Equation3850 G) : Equation3665 G := λ x y => h x x x y y
theorem Equation3855_implies_Equation3668 (G : Type*) [Magma G] (h : Equation3855 G) : Equation3668 G := λ x y => h x x x y y
theorem Equation3856_implies_Equation3667 (G : Type*) [Magma G] (h : Equation3856 G) : Equation3667 G := λ x y => h x x x y y
theorem Equation3857_implies_Equation3667 (G : Type*) [Magma G] (h : Equation3857 G) : Equation3667 G := λ x y => h x x x y y
theorem Equation3858_implies_Equation3667 (G : Type*) [Magma G] (h : Equation3858 G) : Equation3667 G := λ x y => h x x x y y
theorem Equation3859_implies_Equation3668 (G : Type*) [Magma G] (h : Equation3859 G) : Equation3668 G := λ x y => h x x x y y
theorem Equation3860_implies_Equation3668 (G : Type*) [Magma G] (h : Equation3860 G) : Equation3668 G := λ x y => h x x x y y
theorem Equation3913_implies_Equation3865 (G : Type*) [Magma G] (h : Equation3913 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation3950_implies_Equation3865 (G : Type*) [Magma G] (h : Equation3950 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation3987_implies_Equation3865 (G : Type*) [Magma G] (h : Equation3987 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation4004_implies_Equation3865 (G : Type*) [Magma G] (h : Equation4004 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation4021_implies_Equation3865 (G : Type*) [Magma G] (h : Equation4021 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation4038_implies_Equation3865 (G : Type*) [Magma G] (h : Equation4038 G) : Equation3865 G := λ x y => h x x x y y
theorem Equation4043_implies_Equation3868 (G : Type*) [Magma G] (h : Equation4043 G) : Equation3868 G := λ x y => h x x x y y
theorem Equation4048_implies_Equation3868 (G : Type*) [Magma G] (h : Equation4048 G) : Equation3868 G := λ x y => h x x x y y
theorem Equation4053_implies_Equation3868 (G : Type*) [Magma G] (h : Equation4053 G) : Equation3868 G := λ x y => h x x x y y
theorem Equation4058_implies_Equation3871 (G : Type*) [Magma G] (h : Equation4058 G) : Equation3871 G := λ x y => h x x x y y
theorem Equation4059_implies_Equation3870 (G : Type*) [Magma G] (h : Equation4059 G) : Equation3870 G := λ x y => h x x x y y
theorem Equation4060_implies_Equation3870 (G : Type*) [Magma G] (h : Equation4060 G) : Equation3870 G := λ x y => h x x x y y
theorem Equation4061_implies_Equation3870 (G : Type*) [Magma G] (h : Equation4061 G) : Equation3870 G := λ x y => h x x x y y
theorem Equation4062_implies_Equation3871 (G : Type*) [Magma G] (h : Equation4062 G) : Equation3871 G := λ x y => h x x x y y
theorem Equation4063_implies_Equation3871 (G : Type*) [Magma G] (h : Equation4063 G) : Equation3871 G := λ x y => h x x x y y
theorem Equation4116_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4116 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4153_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4153 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4190_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4190 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4207_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4207 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4224_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4224 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4241_implies_Equation4068 (G : Type*) [Magma G] (h : Equation4241 G) : Equation4068 G := λ x y => h x x x y y
theorem Equation4246_implies_Equation4071 (G : Type*) [Magma G] (h : Equation4246 G) : Equation4071 G := λ x y => h x x x y y
theorem Equation4251_implies_Equation4071 (G : Type*) [Magma G] (h : Equation4251 G) : Equation4071 G := λ x y => h x x x y y
theorem Equation4256_implies_Equation4071 (G : Type*) [Magma G] (h : Equation4256 G) : Equation4071 G := λ x y => h x x x y y
theorem Equation4261_implies_Equation4074 (G : Type*) [Magma G] (h : Equation4261 G) : Equation4074 G := λ x y => h x x x y y
theorem Equation4262_implies_Equation4073 (G : Type*) [Magma G] (h : Equation4262 G) : Equation4073 G := λ x y => h x x x y y
theorem Equation4263_implies_Equation4073 (G : Type*) [Magma G] (h : Equation4263 G) : Equation4073 G := λ x y => h x x x y y
theorem Equation4264_implies_Equation4073 (G : Type*) [Magma G] (h : Equation4264 G) : Equation4073 G := λ x y => h x x x y y
theorem Equation4265_implies_Equation4074 (G : Type*) [Magma G] (h : Equation4265 G) : Equation4074 G := λ x y => h x x x y y
theorem Equation4266_implies_Equation4074 (G : Type*) [Magma G] (h : Equation4266 G) : Equation4074 G := λ x y => h x x x y y
theorem Equation4313_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4313 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4338_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4338 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4356_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4356 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4361_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4361 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4368_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4368 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4373_implies_Equation4270 (G : Type*) [Magma G] (h : Equation4373 G) : Equation4270 G := λ x y => h x x x y y
theorem Equation4375_implies_Equation4273 (G : Type*) [Magma G] (h : Equation4375 G) : Equation4273 G := λ x y => h x x x y y
theorem Equation4377_implies_Equation4273 (G : Type*) [Magma G] (h : Equation4377 G) : Equation4273 G := λ x y => h x x x y y
theorem Equation4378_implies_Equation4275 (G : Type*) [Magma G] (h : Equation4378 G) : Equation4275 G := λ x y => h x x x y y
theorem Equation4431_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4431 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4468_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4468 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4505_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4505 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4522_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4522 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4539_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4539 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4556_implies_Equation4383 (G : Type*) [Magma G] (h : Equation4556 G) : Equation4383 G := λ x y => h x x x y y
theorem Equation4561_implies_Equation4386 (G : Type*) [Magma G] (h : Equation4561 G) : Equation4386 G := λ x y => h x x x y y
theorem Equation4566_implies_Equation4386 (G : Type*) [Magma G] (h : Equation4566 G) : Equation4386 G := λ x y => h x x x y y
theorem Equation4571_implies_Equation4386 (G : Type*) [Magma G] (h : Equation4571 G) : Equation4386 G := λ x y => h x x x y y
theorem Equation4576_implies_Equation4389 (G : Type*) [Magma G] (h : Equation4576 G) : Equation4389 G := λ x y => h x x x y y
theorem Equation4577_implies_Equation4388 (G : Type*) [Magma G] (h : Equation4577 G) : Equation4388 G := λ x y => h x x x y y
theorem Equation4578_implies_Equation4388 (G : Type*) [Magma G] (h : Equation4578 G) : Equation4388 G := λ x y => h x x x y y
theorem Equation4579_implies_Equation4388 (G : Type*) [Magma G] (h : Equation4579 G) : Equation4388 G := λ x y => h x x x y y
theorem Equation4580_implies_Equation4389 (G : Type*) [Magma G] (h : Equation4580 G) : Equation4389 G := λ x y => h x x x y y
theorem Equation4581_implies_Equation4389 (G : Type*) [Magma G] (h : Equation4581 G) : Equation4389 G := λ x y => h x x x y y
theorem Equation4628_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4628 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4653_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4653 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4671_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4671 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4676_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4676 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4683_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4683 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4688_implies_Equation4585 (G : Type*) [Magma G] (h : Equation4688 G) : Equation4585 G := λ x y => h x x x y y
theorem Equation4690_implies_Equation4588 (G : Type*) [Magma G] (h : Equation4690 G) : Equation4588 G := λ x y => h x x x y y
theorem Equation4692_implies_Equation4588 (G : Type*) [Magma G] (h : Equation4692 G) : Equation4588 G := λ x y => h x x x y y
theorem Equation4693_implies_Equation4590 (G : Type*) [Magma G] (h : Equation4693 G) : Equation4590 G := λ x y => h x x x y y
import Erdos1001

/-- Lean 4 formalization bridge for JSP-000833 (Erdős Problem 1001).
Erdős, Szüsz, and Turán (1958) studied the asymptotic distribution of rational
approximations with denominator in [N, cN]. Kesten and Sós (1966) proved that
the limit exists for all A > 0 and c ≥ 1. Boca, Cobeli, and Zaharescu gave the
explicit limit formula. -/
theorem jsp_000833_solved (A c : ℝ) (hA : 0 < A) (hc : 1 ≤ c) :
    Erdos1001.IsLimitValue A c (Erdos1001.erdosSzuszTuranLimit A c) :=
  Erdos1001.erdos_1001 A c hA hc

#print axioms jsp_000833_solved
-- 'jsp_000833_solved' depends on axioms: [propext, Classical.choice, Quot.sound]

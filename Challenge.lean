import Erdos1001

namespace JSP000833

open Erdos1001

/-- Formal statement of JSP-000833 (Erdős Problem #1001).
"What limiting measure is covered by approximation intervals using rational numbers with denominators in the specified range?"
Erdős, Szüsz, and Turán (1958) studied the asymptotic distribution of rational
approximations with denominator in [N, cN]. Kesten and Sós (1966) proved that
the limit exists for all A > 0 and c ≥ 1. Boca, Cobeli, and Zaharescu gave the
explicit limiting measure formula `erdosSzuszTuranLimit A c`. -/
def jsp000833Statement : Prop :=
  ∀ (A c : ℝ), 0 < A → 1 ≤ c →
    IsLimitValue A c (erdosSzuszTuranLimit A c)

end JSP000833

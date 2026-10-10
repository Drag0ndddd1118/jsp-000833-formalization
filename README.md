# Formalization of JSP-000833 (Erdős Problem #1001)

## Problem Overview

**Catalog ID:** [JSP-000833](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000833)  
**Erdős Problem:** [#1001](https://www.erdosproblems.com/1001)  
**Mathematical Area:** Number theory / Diophantine approximation  

### Problem Statement

Erdős, Szüsz, and Turán (1958) studied the asymptotic distribution of rational approximations with denominators in $[N, cN]$. Specifically, for fixed $A > 0$ and $c \ge 1$, let $S(N, A, c)$ denote the Lebesgue measure of the set of $\alpha \in (0, 1)$ for which there exists an irreducible rational $x/y$ satisfying $N \le y \le cN$ and $|\alpha - x/y| < A/y^2$. What is the limiting behavior of this measure as $N \to \infty$?

### Resolution

Harry Kesten and Vera T. Sós (1966) proved that the limit exists for all $A > 0$ and $c \ge 1$. Subsequently, Florin P. Boca, Cristian Cobeli, and Alexandru Zaharescu gave the explicit limit formula via Farey-triangle integrals.

## Formalization Details

- **Contract Specification:** `Challenge.lean` defines `JSP000833.jsp000833Statement`.
- **Implementation & Proof:** `Submission.lean` bridges to the Diophantine approximation formalization in `Erdos1001.lean`.
- **Main Theorem:**
  ```lean
  theorem jsp_000833_solved : jsp000833Statement := by
    intro A c hA hc
    exact Erdos1001.erdos_1001 A c hA hc
  ```
- **Axiom Audit:**
  `#print axioms jsp_000833_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [Classical.choice, Quot.sound, propext]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Verification & Reproducibility

### Toolchain
- **Lean:** `leanprover/lean4:v4.34.0`
- **Mathlib:** `v4.34.0` (commit `5ed2965256430c3649e86755f9576b54eca72435`)

### Automated Verification
Run the self-contained verification script:
```bash
python3 check.py
```
This script validates:
1. Complete compilation via `lake build`.
2. Clean source check (0 `sorry`, 0 `admit`, 0 `axiom`).
3. Definitional equality bridge contract check against `Challenge.lean`.
4. Strict foundational axiom whitelist conformance.

## Attribution & Provenance
- **Mathematical Solution:** Harry Kesten, Vera T. Sós, Florin P. Boca, Cristian Cobeli, and Alexandru Zaharescu.
- **Formal Proof Authors:** OpenAI Codex and GPT-5.6 Sol, with upstream proof in `plby/lean-proofs`.
- **Packaging, DefEq Bridge Contract & Verification:** Maintained and audited by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).

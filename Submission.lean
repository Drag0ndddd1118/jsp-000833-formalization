import Challenge
import Erdos1001

namespace JSP000833

/-- DefEq bridge proving JSP-000833 (Erdős Problem #1001). -/
theorem jsp_000833_solved : jsp000833Statement := by
  intro A c hA hc
  exact Erdos1001.erdos_1001 A c hA hc

#print axioms jsp_000833_solved

end JSP000833

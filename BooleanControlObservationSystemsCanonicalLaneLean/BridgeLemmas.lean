import BooleanControlObservationSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlObservableClosed A.system A.observation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.system.controlObservableClosed A.observation

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
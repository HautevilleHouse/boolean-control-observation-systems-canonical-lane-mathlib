import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.ObservabilityConcept

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.admissibleConclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissibleConclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
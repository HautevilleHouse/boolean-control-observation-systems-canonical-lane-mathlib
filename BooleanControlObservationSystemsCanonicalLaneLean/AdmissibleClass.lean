import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem
import BooleanControlObservationSystemsCanonicalLaneLean.ObservationMap

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure AdmissibleClass where
  system : BooleanControlSystem
  observation : ObservationMap system
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (ControlObservableClosed A.system A.observation) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
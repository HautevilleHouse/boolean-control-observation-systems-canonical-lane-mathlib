import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem
import BooleanControlObservationSystemsCanonicalLaneLean.ObservabilityConcept

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure SupervisoryControl (B : BooleanControlSystem) (O : ObservationStructure B) where
  controlMap : B.State → Set (B.Input)
  admissible : ∀ (s : B.State), controlMap s ≠ ∅
  observabilityPreserving : Observability B O

structure ObservabilityBasedController (B : BooleanControlSystem) (O : ObservationStructure B) where
  supervisor : SupervisoryControl B O
  closedLoopSystem : BooleanControlSystem
  closedLoopInitial : closedLoopSystem.State = B.State
  closedLoopInput : closedLoopSystem.Input = B.Input
  closedLoopTransition : ∀ (s : B.State) (u : B.Input), 
    u ∈ supervisor.controlMap s → 
    closedLoopSystem.transition s u = B.transition s u

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservabilityGap where
  indistinguishableStates : Set stateSpace
  observationSequence : ℕ → outputSpace
  gapCondition : Prop
  constructiveWitness : Prop

structure ObservabilityGapEvidence (G : ObservabilityGap) where
  gapConditionClosed : G.gapCondition
  constructiveWitnessClosed : G.constructiveWitness

def ObservabilityGapClosed (G : ObservabilityGap) : Prop :=
  G.gapCondition ∧ G.constructiveWitness

theorem observability_gap_closed_from_evidence (G : ObservabilityGap) (E : ObservabilityGapEvidence G) :
    ObservabilityGapClosed G := by
  exact And.intro E.gapConditionClosed E.constructiveWitnessClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
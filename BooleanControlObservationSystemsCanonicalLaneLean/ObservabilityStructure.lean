import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlObservationCore

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservabilityPackage (sys : BooleanControlObservationSystem) where
  indistinguishableSet : Set sys.stateSet
  indistinguishableRelation : Set (sys.stateSet × sys.stateSet)
  observabilityGramian : Prop
  observabilityCriterion : Prop

structure ObservabilityEvidence {sys : BooleanControlObservationSystem} (pkg : ObservabilityPackage sys) where
  observabilityGramianClosed : pkg.observabilityGramian
  observabilityCriterionClosed : pkg.observabilityCriterion

def ObservabilityClosed {sys : BooleanControlObservationSystem} (pkg : ObservabilityPackage sys) : Prop :=
  pkg.observabilityGramian ∧ pkg.observabilityCriterion

theorem observability_closed_from_evidence {sys : BooleanControlObservationSystem} (pkg : ObservabilityPackage sys) (ev : ObservabilityEvidence pkg) :
  ObservabilityClosed pkg := by
  exact And.intro ev.observabilityGramianClosed ev.observabilityCriterionClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
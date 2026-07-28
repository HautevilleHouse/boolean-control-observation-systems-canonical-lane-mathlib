import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlObservationCore

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ReachabilityPackage (sys : BooleanControlObservationSystem) where
  initialSet : Set sys.stateSet
  goalSet : Set sys.stateSet
  reachableUnderInputs : Set (List sys.inputSet)
  reachableSetComputed : Prop
  reachabilityCriterion : Prop

structure ReachabilityEvidence {sys : BooleanControlObservationSystem} (pkg : ReachabilityPackage sys) where
  reachableSetComputedClosed : pkg.reachableSetComputed
  reachabilityCriterionClosed : pkg.reachabilityCriterion

def ReachabilityClosed {sys : BooleanControlObservationSystem} (pkg : ReachabilityPackage sys) : Prop :=
  pkg.reachableSetComputed ∧ pkg.reachabilityCriterion

theorem reachability_closed_from_evidence {sys : BooleanControlObservationSystem} (pkg : ReachabilityPackage sys) (ev : ReachabilityEvidence pkg) :
  ReachabilityClosed pkg := by
  exact And.intro ev.reachableSetComputedClosed ev.reachabilityCriterionClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
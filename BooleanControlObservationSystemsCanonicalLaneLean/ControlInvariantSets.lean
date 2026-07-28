import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlObservationCore

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure InvariantSetPackage (sys : BooleanControlObservationSystem) where
  invariantSet : Set sys.stateSet
  controlledInvariantProperty : Prop
  maximalInvariantSetComputed : Prop

structure InvariantSetEvidence {sys : BooleanControlObservationSystem} (pkg : InvariantSetPackage sys) where
  controlledInvariantPropertyClosed : pkg.controlledInvariantProperty
  maximalInvariantSetComputedClosed : pkg.maximalInvariantSetComputed

def InvariantSetClosed {sys : BooleanControlObservationSystem} (pkg : InvariantSetPackage sys) : Prop :=
  pkg.controlledInvariantProperty ∧ pkg.maximalInvariantSetComputed

theorem invariant_set_closed_from_evidence {sys : BooleanControlObservationSystem} (pkg : InvariantSetPackage sys) (ev : InvariantSetEvidence pkg) :
  InvariantSetClosed pkg := by
  exact And.intro ev.controlledInvariantPropertyClosed ev.maximalInvariantSetComputedClosed

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
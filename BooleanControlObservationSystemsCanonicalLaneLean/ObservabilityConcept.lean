import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem
import BooleanControlObservationSystemsCanonicalLaneLean.ObservationStructure

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure Distinguishability (B : BooleanControlSystem) (O : ObservationStructure B) : Prop where
  distinguishablePairs : ∀ (s1 s2 : B.State), s1 ≠ s2 → 
    ∃ (inputSequence : List B.Input), 
      let run1 = List.foldl B.transition s1 inputSequence
      let run2 = List.foldl B.transition s2 inputSequence
      O.outputFunction.output run1 ≠ O.outputFunction.output run2

structure Observability (B : BooleanControlSystem) (O : ObservationStructure B) : Prop where
  distinguishability : Distinguishability B O
  minimality : ∀ (s : B.State), ReachableState B s

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
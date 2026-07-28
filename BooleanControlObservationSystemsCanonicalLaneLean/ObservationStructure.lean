import canonicalLaneMathlib.AdmissibleClass
import BooleanControlObservationSystemsCanonicalLaneLean.BooleanControlSystem

namespace HautevilleHouse
namespace BooleanControlObservationSystemsCanonicalLaneLean

structure ObservationMap (B : BooleanControlSystem) where
  Map : B.State → B.State → Prop
  reflexive : ∀ s, Map s s
  symmetric : ∀ s t, Map s t → Map t s
  transitive : ∀ s t u, Map s t → Map t u → Map s u

structure OutputFunction (B : BooleanControlSystem) where
  output : B.State → B.State
  consistent : ∀ s1 s2, output s1 = output s2 → s1 = s2

structure ObservationStructure (B : BooleanControlSystem) where
  map : ObservationMap B
  outputFunction : OutputFunction B

end BooleanControlObservationSystemsCanonicalLaneLean
end HautevilleHouse
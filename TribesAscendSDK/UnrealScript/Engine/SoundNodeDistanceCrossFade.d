module UnrealScript.Engine.SoundNodeDistanceCrossFade;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDistanceCrossFade : SoundNode
{
	struct DistanceDatum
	{
		public @property final auto ref DistributionFloat.RawDistributionFloat FadeOutDistance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 48); }
		private ubyte __FadeOutDistance[28];
		public @property final auto ref DistributionFloat.RawDistributionFloat FadeInDistance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 20); }
		private ubyte __FadeInDistance[28];
		// WARNING: Property 'Volume' has the same name as a defined type!
		public @property final auto ref float FadeOutDistanceEnd() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __FadeOutDistanceEnd[4];
		public @property final auto ref float FadeOutDistanceStart() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __FadeOutDistanceStart[4];
		public @property final auto ref float FadeInDistanceEnd() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __FadeInDistanceEnd[4];
		public @property final auto ref float FadeInDistanceStart() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __FadeInDistanceStart[4];
	}
	public @property final auto ref ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum) CrossFadeInput() { return *cast(ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum)*)(cast(size_t)cast(void*)this + 76); }
}

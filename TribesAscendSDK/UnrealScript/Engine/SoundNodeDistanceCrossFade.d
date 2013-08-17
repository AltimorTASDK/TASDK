module UnrealScript.Engine.SoundNodeDistanceCrossFade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDistanceCrossFade : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeDistanceCrossFade")); }
	private static __gshared SoundNodeDistanceCrossFade mDefaultProperties;
	@property final static SoundNodeDistanceCrossFade DefaultProperties() { mixin(MGDPC("SoundNodeDistanceCrossFade", "SoundNodeDistanceCrossFade Engine.Default__SoundNodeDistanceCrossFade")); }
	struct DistanceDatum
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SoundNodeDistanceCrossFade.DistanceDatum")); }
		@property final auto ref
		{
			DistributionFloat.RawDistributionFloat FadeOutDistance() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 48)); }
			DistributionFloat.RawDistributionFloat FadeInDistance() { mixin(MGPS("DistributionFloat.RawDistributionFloat", 20)); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			float FadeOutDistanceEnd() { mixin(MGPS("float", 12)); }
			float FadeOutDistanceStart() { mixin(MGPS("float", 8)); }
			float FadeInDistanceEnd() { mixin(MGPS("float", 4)); }
			float FadeInDistanceStart() { mixin(MGPS("float", 0)); }
		}
	}
	@property final auto ref ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum) CrossFadeInput() { mixin(MGPC("ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum)", 76)); }
}

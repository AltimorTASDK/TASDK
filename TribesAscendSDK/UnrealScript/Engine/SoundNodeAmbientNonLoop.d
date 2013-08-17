module UnrealScript.Engine.SoundNodeAmbientNonLoop;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface SoundNodeAmbientNonLoop : SoundNodeAmbient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeAmbientNonLoop")); }
	private static __gshared SoundNodeAmbientNonLoop mDefaultProperties;
	@property final static SoundNodeAmbientNonLoop DefaultProperties() { mixin(MGDPC("SoundNodeAmbientNonLoop", "SoundNodeAmbientNonLoop Engine.Default__SoundNodeAmbientNonLoop")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat DelayTime() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 312)); }
		float DelayMax() { mixin(MGPC("float", 308)); }
		float DelayMin() { mixin(MGPC("float", 304)); }
	}
}

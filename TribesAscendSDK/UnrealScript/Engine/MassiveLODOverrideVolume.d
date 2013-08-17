module UnrealScript.Engine.MassiveLODOverrideVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface MassiveLODOverrideVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MassiveLODOverrideVolume")()); }
	private static __gshared MassiveLODOverrideVolume mDefaultProperties;
	@property final static MassiveLODOverrideVolume DefaultProperties() { mixin(MGDPC!(MassiveLODOverrideVolume, "MassiveLODOverrideVolume Engine.Default__MassiveLODOverrideVolume")()); }
}

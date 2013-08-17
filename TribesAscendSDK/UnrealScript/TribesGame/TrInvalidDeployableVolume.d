module UnrealScript.TribesGame.TrInvalidDeployableVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface TrInvalidDeployableVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrInvalidDeployableVolume")); }
	private static __gshared TrInvalidDeployableVolume mDefaultProperties;
	@property final static TrInvalidDeployableVolume DefaultProperties() { mixin(MGDPC("TrInvalidDeployableVolume", "TrInvalidDeployableVolume TribesGame.Default__TrInvalidDeployableVolume")); }
}

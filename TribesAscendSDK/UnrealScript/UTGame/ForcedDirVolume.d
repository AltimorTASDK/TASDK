module UnrealScript.UTGame.ForcedDirVolume;

import ScriptClasses;
import UnrealScript.UDKBase.UDKForcedDirectionVolume;

extern(C++) interface ForcedDirVolume : UDKForcedDirectionVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.ForcedDirVolume")); }
	private static __gshared ForcedDirVolume mDefaultProperties;
	@property final static ForcedDirVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ForcedDirVolume)("ForcedDirVolume UTGame.Default__ForcedDirVolume")); }
}

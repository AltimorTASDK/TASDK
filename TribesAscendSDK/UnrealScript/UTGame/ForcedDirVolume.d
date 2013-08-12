module UnrealScript.UTGame.ForcedDirVolume;

import ScriptClasses;
import UnrealScript.UDKBase.UDKForcedDirectionVolume;

extern(C++) interface ForcedDirVolume : UDKForcedDirectionVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.ForcedDirVolume")); }
}

module UnrealScript.TribesGame.TrDevice_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_GrenadeXL;

extern(C++) interface TrDevice_GrenadeXL_MKD : TrDevice_GrenadeXL
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_GrenadeXL_MKD")); }
}

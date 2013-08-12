module UnrealScript.TribesGame.TrDevice_Melee_MC;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Melee;

extern(C++) interface TrDevice_Melee_MC : TrDevice_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Melee_MC")); }
	@property final auto ref ScriptString ContentDeviceClassString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2192); }
}

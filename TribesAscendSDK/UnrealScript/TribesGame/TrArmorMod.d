module UnrealScript.TribesGame.TrArmorMod;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrArmorMod : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod")); }
}

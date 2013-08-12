module UnrealScript.TribesGame.TrArmorMod_Infiltrator;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Infiltrator : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Infiltrator")); }
}

module UnrealScript.TribesGame.TrArmorMod_Brute;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Brute : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Brute")); }
	private static __gshared TrArmorMod_Brute mDefaultProperties;
	@property final static TrArmorMod_Brute DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Brute)("TrArmorMod_Brute TribesGame.Default__TrArmorMod_Brute")); }
}

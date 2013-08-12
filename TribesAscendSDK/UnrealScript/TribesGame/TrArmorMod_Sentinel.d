module UnrealScript.TribesGame.TrArmorMod_Sentinel;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Sentinel : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Sentinel")); }
	private static __gshared TrArmorMod_Sentinel mDefaultProperties;
	@property final static TrArmorMod_Sentinel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Sentinel)("TrArmorMod_Sentinel TribesGame.Default__TrArmorMod_Sentinel")); }
}

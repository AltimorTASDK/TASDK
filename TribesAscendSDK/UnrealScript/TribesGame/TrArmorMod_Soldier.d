module UnrealScript.TribesGame.TrArmorMod_Soldier;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Soldier : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Soldier")); }
	private static __gshared TrArmorMod_Soldier mDefaultProperties;
	@property final static TrArmorMod_Soldier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Soldier)("TrArmorMod_Soldier TribesGame.Default__TrArmorMod_Soldier")); }
}

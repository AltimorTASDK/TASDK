module UnrealScript.TribesGame.TrArmorMod_Raider;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Raider : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Raider")); }
	private static __gshared TrArmorMod_Raider mDefaultProperties;
	@property final static TrArmorMod_Raider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Raider)("TrArmorMod_Raider TribesGame.Default__TrArmorMod_Raider")); }
}

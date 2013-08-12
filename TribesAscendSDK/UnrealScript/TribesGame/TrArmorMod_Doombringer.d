module UnrealScript.TribesGame.TrArmorMod_Doombringer;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Doombringer : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Doombringer")); }
	private static __gshared TrArmorMod_Doombringer mDefaultProperties;
	@property final static TrArmorMod_Doombringer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Doombringer)("TrArmorMod_Doombringer TribesGame.Default__TrArmorMod_Doombringer")); }
}

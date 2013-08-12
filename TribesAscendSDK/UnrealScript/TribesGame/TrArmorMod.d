module UnrealScript.TribesGame.TrArmorMod;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrArmorMod : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod")); }
	private static __gshared TrArmorMod mDefaultProperties;
	@property final static TrArmorMod DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod)("TrArmorMod TribesGame.Default__TrArmorMod")); }
}

module UnrealScript.TribesGame.TrDevice_Grenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_Grenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Grenade")); }
	private static __gshared TrDevice_Grenade mDefaultProperties;
	@property final static TrDevice_Grenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Grenade)("TrDevice_Grenade TribesGame.Default__TrDevice_Grenade")); }
}

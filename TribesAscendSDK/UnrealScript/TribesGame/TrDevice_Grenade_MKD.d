module UnrealScript.TribesGame.TrDevice_Grenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Grenade;

extern(C++) interface TrDevice_Grenade_MKD : TrDevice_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Grenade_MKD")); }
	private static __gshared TrDevice_Grenade_MKD mDefaultProperties;
	@property final static TrDevice_Grenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Grenade_MKD)("TrDevice_Grenade_MKD TribesGame.Default__TrDevice_Grenade_MKD")); }
}

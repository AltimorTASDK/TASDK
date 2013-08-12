module UnrealScript.TribesGame.TrProj_Grenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_Grenade_MKD : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Grenade_MKD")); }
	private static __gshared TrProj_Grenade_MKD mDefaultProperties;
	@property final static TrProj_Grenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Grenade_MKD)("TrProj_Grenade_MKD TribesGame.Default__TrProj_Grenade_MKD")); }
}

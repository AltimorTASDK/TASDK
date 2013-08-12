module UnrealScript.TribesGame.TrProj_GrenadeXL;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeXL : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GrenadeXL")); }
	private static __gshared TrProj_GrenadeXL mDefaultProperties;
	@property final static TrProj_GrenadeXL DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_GrenadeXL)("TrProj_GrenadeXL TribesGame.Default__TrProj_GrenadeXL")); }
}

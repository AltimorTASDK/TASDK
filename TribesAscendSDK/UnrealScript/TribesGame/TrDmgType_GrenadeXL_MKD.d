module UnrealScript.TribesGame.TrDmgType_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeXL_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_GrenadeXL_MKD")); }
	private static __gshared TrDmgType_GrenadeXL_MKD mDefaultProperties;
	@property final static TrDmgType_GrenadeXL_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_GrenadeXL_MKD)("TrDmgType_GrenadeXL_MKD TribesGame.Default__TrDmgType_GrenadeXL_MKD")); }
}

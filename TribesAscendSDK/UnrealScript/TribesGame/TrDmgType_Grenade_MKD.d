module UnrealScript.TribesGame.TrDmgType_Grenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Grenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Grenade_MKD")); }
	private static __gshared TrDmgType_Grenade_MKD mDefaultProperties;
	@property final static TrDmgType_Grenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Grenade_MKD)("TrDmgType_Grenade_MKD TribesGame.Default__TrDmgType_Grenade_MKD")); }
}

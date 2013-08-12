module UnrealScript.TribesGame.TrDmgType_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NovaColt_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_NovaColt_MKD")); }
	private static __gshared TrDmgType_NovaColt_MKD mDefaultProperties;
	@property final static TrDmgType_NovaColt_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_NovaColt_MKD)("TrDmgType_NovaColt_MKD TribesGame.Default__TrDmgType_NovaColt_MKD")); }
}

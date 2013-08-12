module UnrealScript.TribesGame.TrDmgType_SN7_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SN7_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SN7_MKD")); }
	private static __gshared TrDmgType_SN7_MKD mDefaultProperties;
	@property final static TrDmgType_SN7_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SN7_MKD)("TrDmgType_SN7_MKD TribesGame.Default__TrDmgType_SN7_MKD")); }
}

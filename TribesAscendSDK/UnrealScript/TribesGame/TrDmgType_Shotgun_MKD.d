module UnrealScript.TribesGame.TrDmgType_Shotgun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Shotgun_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Shotgun_MKD")); }
	private static __gshared TrDmgType_Shotgun_MKD mDefaultProperties;
	@property final static TrDmgType_Shotgun_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Shotgun_MKD)("TrDmgType_Shotgun_MKD TribesGame.Default__TrDmgType_Shotgun_MKD")); }
}

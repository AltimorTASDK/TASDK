module UnrealScript.TribesGame.TrDmgType_X1Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_X1Rifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_X1Rifle")); }
	private static __gshared TrDmgType_X1Rifle mDefaultProperties;
	@property final static TrDmgType_X1Rifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_X1Rifle)("TrDmgType_X1Rifle TribesGame.Default__TrDmgType_X1Rifle")); }
}

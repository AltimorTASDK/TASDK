module UnrealScript.TribesGame.TrDmgType_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_LightAssaultRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LightAssaultRifle")); }
	private static __gshared TrDmgType_LightAssaultRifle mDefaultProperties;
	@property final static TrDmgType_LightAssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LightAssaultRifle)("TrDmgType_LightAssaultRifle TribesGame.Default__TrDmgType_LightAssaultRifle")); }
}

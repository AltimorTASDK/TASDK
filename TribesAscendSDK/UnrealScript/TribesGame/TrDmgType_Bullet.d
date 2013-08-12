module UnrealScript.TribesGame.TrDmgType_Bullet;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Bullet : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Bullet")); }
	private static __gshared TrDmgType_Bullet mDefaultProperties;
	@property final static TrDmgType_Bullet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Bullet)("TrDmgType_Bullet TribesGame.Default__TrDmgType_Bullet")); }
}

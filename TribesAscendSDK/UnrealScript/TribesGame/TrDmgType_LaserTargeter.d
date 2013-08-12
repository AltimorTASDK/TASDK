module UnrealScript.TribesGame.TrDmgType_LaserTargeter;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_LaserTargeter : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LaserTargeter")); }
	private static __gshared TrDmgType_LaserTargeter mDefaultProperties;
	@property final static TrDmgType_LaserTargeter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LaserTargeter)("TrDmgType_LaserTargeter TribesGame.Default__TrDmgType_LaserTargeter")); }
}

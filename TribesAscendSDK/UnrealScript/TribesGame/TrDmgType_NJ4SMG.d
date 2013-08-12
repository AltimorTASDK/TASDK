module UnrealScript.TribesGame.TrDmgType_NJ4SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NJ4SMG : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_NJ4SMG")); }
	private static __gshared TrDmgType_NJ4SMG mDefaultProperties;
	@property final static TrDmgType_NJ4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_NJ4SMG)("TrDmgType_NJ4SMG TribesGame.Default__TrDmgType_NJ4SMG")); }
}

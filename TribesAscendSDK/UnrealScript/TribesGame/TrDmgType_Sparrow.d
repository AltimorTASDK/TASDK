module UnrealScript.TribesGame.TrDmgType_Sparrow;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Sparrow : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Sparrow")); }
	private static __gshared TrDmgType_Sparrow mDefaultProperties;
	@property final static TrDmgType_Sparrow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Sparrow)("TrDmgType_Sparrow TribesGame.Default__TrDmgType_Sparrow")); }
}

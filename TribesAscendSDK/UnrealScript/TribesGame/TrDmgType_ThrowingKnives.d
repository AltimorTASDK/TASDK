module UnrealScript.TribesGame.TrDmgType_ThrowingKnives;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ThrowingKnives : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ThrowingKnives")); }
	private static __gshared TrDmgType_ThrowingKnives mDefaultProperties;
	@property final static TrDmgType_ThrowingKnives DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ThrowingKnives)("TrDmgType_ThrowingKnives TribesGame.Default__TrDmgType_ThrowingKnives")); }
}

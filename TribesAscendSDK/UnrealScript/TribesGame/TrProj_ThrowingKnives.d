module UnrealScript.TribesGame.TrProj_ThrowingKnives;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ThrowingKnives : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ThrowingKnives")); }
	private static __gshared TrProj_ThrowingKnives mDefaultProperties;
	@property final static TrProj_ThrowingKnives DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ThrowingKnives)("TrProj_ThrowingKnives TribesGame.Default__TrProj_ThrowingKnives")); }
}

module UnrealScript.TribesGame.TrProj_NJ5SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NJ5SMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NJ5SMG")); }
	private static __gshared TrProj_NJ5SMG mDefaultProperties;
	@property final static TrProj_NJ5SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_NJ5SMG)("TrProj_NJ5SMG TribesGame.Default__TrProj_NJ5SMG")); }
}

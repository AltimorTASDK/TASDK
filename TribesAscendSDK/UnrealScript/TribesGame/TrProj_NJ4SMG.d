module UnrealScript.TribesGame.TrProj_NJ4SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NJ4SMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NJ4SMG")); }
	private static __gshared TrProj_NJ4SMG mDefaultProperties;
	@property final static TrProj_NJ4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_NJ4SMG)("TrProj_NJ4SMG TribesGame.Default__TrProj_NJ4SMG")); }
}

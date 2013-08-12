module UnrealScript.TribesGame.TrProj_ArxShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ArxShotgun : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ArxShotgun")); }
	private static __gshared TrProj_ArxShotgun mDefaultProperties;
	@property final static TrProj_ArxShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ArxShotgun)("TrProj_ArxShotgun TribesGame.Default__TrProj_ArxShotgun")); }
}

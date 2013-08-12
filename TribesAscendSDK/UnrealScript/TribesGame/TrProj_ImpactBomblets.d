module UnrealScript.TribesGame.TrProj_ImpactBomblets;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ImpactBomblets : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ImpactBomblets")); }
	private static __gshared TrProj_ImpactBomblets mDefaultProperties;
	@property final static TrProj_ImpactBomblets DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ImpactBomblets)("TrProj_ImpactBomblets TribesGame.Default__TrProj_ImpactBomblets")); }
}

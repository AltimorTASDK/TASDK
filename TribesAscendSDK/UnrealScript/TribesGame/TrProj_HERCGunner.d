module UnrealScript.TribesGame.TrProj_HERCGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HERCGunner : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HERCGunner")); }
	private static __gshared TrProj_HERCGunner mDefaultProperties;
	@property final static TrProj_HERCGunner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HERCGunner)("TrProj_HERCGunner TribesGame.Default__TrProj_HERCGunner")); }
}

module UnrealScript.TribesGame.TrProj_BeowulfGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BeowulfGunner : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_BeowulfGunner")); }
	private static __gshared TrProj_BeowulfGunner mDefaultProperties;
	@property final static TrProj_BeowulfGunner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_BeowulfGunner)("TrProj_BeowulfGunner TribesGame.Default__TrProj_BeowulfGunner")); }
}

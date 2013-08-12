module UnrealScript.TribesGame.TrDmgType_BeowulfGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_BeowulfGunner : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_BeowulfGunner")); }
	private static __gshared TrDmgType_BeowulfGunner mDefaultProperties;
	@property final static TrDmgType_BeowulfGunner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_BeowulfGunner)("TrDmgType_BeowulfGunner TribesGame.Default__TrDmgType_BeowulfGunner")); }
}

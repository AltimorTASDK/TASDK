module UnrealScript.TribesGame.TrDmgType_HERCGunner;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HERCGunner : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HERCGunner")); }
	private static __gshared TrDmgType_HERCGunner mDefaultProperties;
	@property final static TrDmgType_HERCGunner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HERCGunner)("TrDmgType_HERCGunner TribesGame.Default__TrDmgType_HERCGunner")); }
}

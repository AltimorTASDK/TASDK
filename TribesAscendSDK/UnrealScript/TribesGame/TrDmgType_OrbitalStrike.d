module UnrealScript.TribesGame.TrDmgType_OrbitalStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_OrbitalStrike : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_OrbitalStrike")); }
	private static __gshared TrDmgType_OrbitalStrike mDefaultProperties;
	@property final static TrDmgType_OrbitalStrike DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_OrbitalStrike)("TrDmgType_OrbitalStrike TribesGame.Default__TrDmgType_OrbitalStrike")); }
}

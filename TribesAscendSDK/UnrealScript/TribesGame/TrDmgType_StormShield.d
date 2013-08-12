module UnrealScript.TribesGame.TrDmgType_StormShield;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_StormShield : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_StormShield")); }
	private static __gshared TrDmgType_StormShield mDefaultProperties;
	@property final static TrDmgType_StormShield DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_StormShield)("TrDmgType_StormShield TribesGame.Default__TrDmgType_StormShield")); }
}

module UnrealScript.TribesGame.TrPerk_SafetyThird;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SafetyThird : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_SafetyThird")); }
	private static __gshared TrPerk_SafetyThird mDefaultProperties;
	@property final static TrPerk_SafetyThird DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_SafetyThird)("TrPerk_SafetyThird TribesGame.Default__TrPerk_SafetyThird")); }
}

module UnrealScript.TribesGame.TrPerk_SafetyThird;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SafetyThird : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_SafetyThird")); }
	private static __gshared TrPerk_SafetyThird mDefaultProperties;
	@property final static TrPerk_SafetyThird DefaultProperties() { mixin(MGDPC("TrPerk_SafetyThird", "TrPerk_SafetyThird TribesGame.Default__TrPerk_SafetyThird")); }
}

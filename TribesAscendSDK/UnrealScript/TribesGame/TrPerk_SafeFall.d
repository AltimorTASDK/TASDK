module UnrealScript.TribesGame.TrPerk_SafeFall;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SafeFall : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_SafeFall")); }
	private static __gshared TrPerk_SafeFall mDefaultProperties;
	@property final static TrPerk_SafeFall DefaultProperties() { mixin(MGDPC("TrPerk_SafeFall", "TrPerk_SafeFall TribesGame.Default__TrPerk_SafeFall")); }
}

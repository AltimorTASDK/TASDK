module UnrealScript.TribesGame.TrPerk_Lightweight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Lightweight : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Lightweight")); }
	private static __gshared TrPerk_Lightweight mDefaultProperties;
	@property final static TrPerk_Lightweight DefaultProperties() { mixin(MGDPC("TrPerk_Lightweight", "TrPerk_Lightweight TribesGame.Default__TrPerk_Lightweight")); }
}

module UnrealScript.TribesGame.TrPerk_Looter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Looter : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Looter")); }
	private static __gshared TrPerk_Looter mDefaultProperties;
	@property final static TrPerk_Looter DefaultProperties() { mixin(MGDPC("TrPerk_Looter", "TrPerk_Looter TribesGame.Default__TrPerk_Looter")); }
}

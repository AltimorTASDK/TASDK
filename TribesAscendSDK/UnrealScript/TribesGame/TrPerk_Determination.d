module UnrealScript.TribesGame.TrPerk_Determination;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Determination : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Determination")); }
	private static __gshared TrPerk_Determination mDefaultProperties;
	@property final static TrPerk_Determination DefaultProperties() { mixin(MGDPC("TrPerk_Determination", "TrPerk_Determination TribesGame.Default__TrPerk_Determination")); }
}

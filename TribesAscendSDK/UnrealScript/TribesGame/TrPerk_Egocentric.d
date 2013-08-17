module UnrealScript.TribesGame.TrPerk_Egocentric;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Egocentric : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Egocentric")); }
	private static __gshared TrPerk_Egocentric mDefaultProperties;
	@property final static TrPerk_Egocentric DefaultProperties() { mixin(MGDPC("TrPerk_Egocentric", "TrPerk_Egocentric TribesGame.Default__TrPerk_Egocentric")); }
}

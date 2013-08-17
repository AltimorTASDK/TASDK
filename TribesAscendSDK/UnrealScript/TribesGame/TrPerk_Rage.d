module UnrealScript.TribesGame.TrPerk_Rage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Rage : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Rage")); }
	private static __gshared TrPerk_Rage mDefaultProperties;
	@property final static TrPerk_Rage DefaultProperties() { mixin(MGDPC("TrPerk_Rage", "TrPerk_Rage TribesGame.Default__TrPerk_Rage")); }
}

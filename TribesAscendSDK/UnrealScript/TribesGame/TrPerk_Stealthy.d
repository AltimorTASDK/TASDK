module UnrealScript.TribesGame.TrPerk_Stealthy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Stealthy : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_Stealthy")); }
	private static __gshared TrPerk_Stealthy mDefaultProperties;
	@property final static TrPerk_Stealthy DefaultProperties() { mixin(MGDPC("TrPerk_Stealthy", "TrPerk_Stealthy TribesGame.Default__TrPerk_Stealthy")); }
}

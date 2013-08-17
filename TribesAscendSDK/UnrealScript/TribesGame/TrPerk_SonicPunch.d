module UnrealScript.TribesGame.TrPerk_SonicPunch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SonicPunch : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_SonicPunch")); }
	private static __gshared TrPerk_SonicPunch mDefaultProperties;
	@property final static TrPerk_SonicPunch DefaultProperties() { mixin(MGDPC("TrPerk_SonicPunch", "TrPerk_SonicPunch TribesGame.Default__TrPerk_SonicPunch")); }
}

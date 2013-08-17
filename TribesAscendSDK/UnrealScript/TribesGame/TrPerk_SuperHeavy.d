module UnrealScript.TribesGame.TrPerk_SuperHeavy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SuperHeavy : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPerk_SuperHeavy")); }
	private static __gshared TrPerk_SuperHeavy mDefaultProperties;
	@property final static TrPerk_SuperHeavy DefaultProperties() { mixin(MGDPC("TrPerk_SuperHeavy", "TrPerk_SuperHeavy TribesGame.Default__TrPerk_SuperHeavy")); }
}

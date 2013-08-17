module UnrealScript.TribesGame.TrPerk_BountyHunter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_BountyHunter : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_BountyHunter")()); }
	private static __gshared TrPerk_BountyHunter mDefaultProperties;
	@property final static TrPerk_BountyHunter DefaultProperties() { mixin(MGDPC!(TrPerk_BountyHunter, "TrPerk_BountyHunter TribesGame.Default__TrPerk_BountyHunter")()); }
}

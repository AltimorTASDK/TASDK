module UnrealScript.TribesGame.TrPerk_CloseCombat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_CloseCombat : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_CloseCombat")()); }
	private static __gshared TrPerk_CloseCombat mDefaultProperties;
	@property final static TrPerk_CloseCombat DefaultProperties() { mixin(MGDPC!(TrPerk_CloseCombat, "TrPerk_CloseCombat TribesGame.Default__TrPerk_CloseCombat")()); }
}

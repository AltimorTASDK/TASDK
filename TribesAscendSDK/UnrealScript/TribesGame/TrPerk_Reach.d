module UnrealScript.TribesGame.TrPerk_Reach;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Reach : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_Reach")()); }
	private static __gshared TrPerk_Reach mDefaultProperties;
	@property final static TrPerk_Reach DefaultProperties() { mixin(MGDPC!(TrPerk_Reach, "TrPerk_Reach TribesGame.Default__TrPerk_Reach")()); }
}

module UnrealScript.TribesGame.TrPerk_Blank;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Blank : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_Blank")()); }
	private static __gshared TrPerk_Blank mDefaultProperties;
	@property final static TrPerk_Blank DefaultProperties() { mixin(MGDPC!(TrPerk_Blank, "TrPerk_Blank TribesGame.Default__TrPerk_Blank")()); }
}

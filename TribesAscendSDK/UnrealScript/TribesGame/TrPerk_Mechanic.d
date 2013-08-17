module UnrealScript.TribesGame.TrPerk_Mechanic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Mechanic : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_Mechanic")()); }
	private static __gshared TrPerk_Mechanic mDefaultProperties;
	@property final static TrPerk_Mechanic DefaultProperties() { mixin(MGDPC!(TrPerk_Mechanic, "TrPerk_Mechanic TribesGame.Default__TrPerk_Mechanic")()); }
}

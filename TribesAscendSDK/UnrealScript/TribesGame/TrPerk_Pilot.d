module UnrealScript.TribesGame.TrPerk_Pilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Pilot : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_Pilot")()); }
	private static __gshared TrPerk_Pilot mDefaultProperties;
	@property final static TrPerk_Pilot DefaultProperties() { mixin(MGDPC!(TrPerk_Pilot, "TrPerk_Pilot TribesGame.Default__TrPerk_Pilot")()); }
}

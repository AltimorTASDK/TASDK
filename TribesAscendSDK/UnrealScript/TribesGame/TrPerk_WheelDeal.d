module UnrealScript.TribesGame.TrPerk_WheelDeal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_WheelDeal : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPerk_WheelDeal")()); }
	private static __gshared TrPerk_WheelDeal mDefaultProperties;
	@property final static TrPerk_WheelDeal DefaultProperties() { mixin(MGDPC!(TrPerk_WheelDeal, "TrPerk_WheelDeal TribesGame.Default__TrPerk_WheelDeal")()); }
}

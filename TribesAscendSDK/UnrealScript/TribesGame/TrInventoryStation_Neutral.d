module UnrealScript.TribesGame.TrInventoryStation_Neutral;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_Neutral : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrInventoryStation_Neutral")()); }
	private static __gshared TrInventoryStation_Neutral mDefaultProperties;
	@property final static TrInventoryStation_Neutral DefaultProperties() { mixin(MGDPC!(TrInventoryStation_Neutral, "TrInventoryStation_Neutral TribesGame.Default__TrInventoryStation_Neutral")()); }
}

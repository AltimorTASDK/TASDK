module UnrealScript.TribesGame.TrInventoryStation_Storm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_Storm : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrInventoryStation_Storm")()); }
	private static __gshared TrInventoryStation_Storm mDefaultProperties;
	@property final static TrInventoryStation_Storm DefaultProperties() { mixin(MGDPC!(TrInventoryStation_Storm, "TrInventoryStation_Storm TribesGame.Default__TrInventoryStation_Storm")()); }
}

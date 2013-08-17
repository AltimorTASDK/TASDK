module UnrealScript.TribesGame.TrDaDCapacitor_DS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDaDCapacitor;

extern(C++) interface TrDaDCapacitor_DS : TrDaDCapacitor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDaDCapacitor_DS")()); }
	private static __gshared TrDaDCapacitor_DS mDefaultProperties;
	@property final static TrDaDCapacitor_DS DefaultProperties() { mixin(MGDPC!(TrDaDCapacitor_DS, "TrDaDCapacitor_DS TribesGame.Default__TrDaDCapacitor_DS")()); }
}

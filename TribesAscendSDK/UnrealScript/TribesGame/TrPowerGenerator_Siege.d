module UnrealScript.TribesGame.TrPowerGenerator_Siege;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrPowerGenerator_Siege : TrPowerGenerator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPowerGenerator_Siege")()); }
	private static __gshared TrPowerGenerator_Siege mDefaultProperties;
	@property final static TrPowerGenerator_Siege DefaultProperties() { mixin(MGDPC!(TrPowerGenerator_Siege, "TrPowerGenerator_Siege TribesGame.Default__TrPowerGenerator_Siege")()); }
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrPowerGenerator_Siege.BlownUp")()); }
	}
}

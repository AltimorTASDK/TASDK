module UnrealScript.TribesGame.TrBaseTurret_TargetPractice;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;

extern(C++) interface TrBaseTurret_TargetPractice : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrBaseTurret_TargetPractice")()); }
	private static __gshared TrBaseTurret_TargetPractice mDefaultProperties;
	@property final static TrBaseTurret_TargetPractice DefaultProperties() { mixin(MGDPC!(TrBaseTurret_TargetPractice, "TrBaseTurret_TargetPractice TribesGame.Default__TrBaseTurret_TargetPractice")()); }
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrBaseTurret_TargetPractice.BlownUp")()); }
	}
}

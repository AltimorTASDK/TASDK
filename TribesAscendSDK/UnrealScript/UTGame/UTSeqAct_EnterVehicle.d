module UnrealScript.UTGame.UTSeqAct_EnterVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_EnterVehicle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_EnterVehicle")()); }
	private static __gshared UTSeqAct_EnterVehicle mDefaultProperties;
	@property final static UTSeqAct_EnterVehicle DefaultProperties() { mixin(MGDPC!(UTSeqAct_EnterVehicle, "UTSeqAct_EnterVehicle UTGame.Default__UTSeqAct_EnterVehicle")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqAct_EnterVehicle.Activated")()); }
	}
	@property final auto ref int SeatIndex() { mixin(MGPC!(int, 232)()); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}

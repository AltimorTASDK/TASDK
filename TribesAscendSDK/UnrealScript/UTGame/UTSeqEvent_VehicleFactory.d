module UnrealScript.UTGame.UTSeqEvent_VehicleFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_VehicleFactory : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqEvent_VehicleFactory")()); }
	private static __gshared UTSeqEvent_VehicleFactory mDefaultProperties;
	@property final static UTSeqEvent_VehicleFactory DefaultProperties() { mixin(MGDPC!(UTSeqEvent_VehicleFactory, "UTSeqEvent_VehicleFactory UTGame.Default__UTSeqEvent_VehicleFactory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqEvent_VehicleFactory.Activated")()); }
	}
	@property final auto ref UTVehicle SpawnedVehicle() { mixin(MGPC!(UTVehicle, 256)()); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}

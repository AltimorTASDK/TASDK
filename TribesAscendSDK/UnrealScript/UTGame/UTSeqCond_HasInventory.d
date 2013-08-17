module UnrealScript.UTGame.UTSeqCond_HasInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_HasInventory : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqCond_HasInventory")()); }
	private static __gshared UTSeqCond_HasInventory mDefaultProperties;
	@property final static UTSeqCond_HasInventory DefaultProperties() { mixin(MGDPC!(UTSeqCond_HasInventory, "UTSeqCond_HasInventory UTGame.Default__UTSeqCond_HasInventory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqCond_HasInventory.Activated")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptClass RequiredInventory() { mixin(MGPC!(ScriptClass, 212)()); }
			Actor Target() { mixin(MGPC!(Actor, 208)()); }
		}
		bool bCheckVehicleDriver() { mixin(MGBPC!(216, 0x2)()); }
		bool bCheckVehicleDriver(bool val) { mixin(MSBPC!(216, 0x2)()); }
		bool bAllowSubclass() { mixin(MGBPC!(216, 0x1)()); }
		bool bAllowSubclass(bool val) { mixin(MSBPC!(216, 0x1)()); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}

module UnrealScript.UDKBase.UDKAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByVehicle : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByVehicle")()); }
	private static __gshared UDKAnimBlendByVehicle mDefaultProperties;
	@property final static UDKAnimBlendByVehicle DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByVehicle, "UDKAnimBlendByVehicle UDKBase.Default__UDKAnimBlendByVehicle")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mUpdateVehicleState;
		public @property static final ScriptFunction UpdateVehicleState() { mixin(MGF!("mUpdateVehicleState", "Function UDKBase.UDKAnimBlendByVehicle.UpdateVehicleState")()); }
	}
	@property final
	{
		@property final auto ref Vehicle LastVehicle() { mixin(MGPC!(Vehicle, 300)()); }
		bool bLastPawnDriving() { mixin(MGBPC!(296, 0x1)()); }
		bool bLastPawnDriving(bool val) { mixin(MSBPC!(296, 0x1)()); }
	}
	final void UpdateVehicleState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleState, cast(void*)0, cast(void*)0);
	}
}

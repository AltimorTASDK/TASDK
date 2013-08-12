module UnrealScript.UDKBase.UDKAnimBlendByVehicle;

import ScriptClasses;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByVehicle : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByVehicle")); }
	private static __gshared UDKAnimBlendByVehicle mDefaultProperties;
	@property final static UDKAnimBlendByVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimBlendByVehicle)("UDKAnimBlendByVehicle UDKBase.Default__UDKAnimBlendByVehicle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mUpdateVehicleState;
		public @property static final ScriptFunction UpdateVehicleState() { return mUpdateVehicleState ? mUpdateVehicleState : (mUpdateVehicleState = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimBlendByVehicle.UpdateVehicleState")); }
	}
	@property final
	{
		@property final auto ref Vehicle LastVehicle() { return *cast(Vehicle*)(cast(size_t)cast(void*)this + 300); }
		bool bLastPawnDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
		bool bLastPawnDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	}
	final void UpdateVehicleState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateVehicleState, cast(void*)0, cast(void*)0);
	}
}

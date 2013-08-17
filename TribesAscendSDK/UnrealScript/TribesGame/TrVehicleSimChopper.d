module UnrealScript.TribesGame.TrVehicleSimChopper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKVehicleSimChopper;

extern(C++) interface TrVehicleSimChopper : UDKVehicleSimChopper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleSimChopper")); }
	private static __gshared TrVehicleSimChopper mDefaultProperties;
	@property final static TrVehicleSimChopper DefaultProperties() { mixin(MGDPC("TrVehicleSimChopper", "TrVehicleSimChopper TribesGame.Default__TrVehicleSimChopper")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetVehicleControls;
		public @property static final ScriptFunction SetVehicleControls() { mixin(MGF("mSetVehicleControls", "Function TribesGame.TrVehicleSimChopper.SetVehicleControls")); }
	}
	@property final
	{
		auto ref
		{
			UDKVehicleSimChopper.AnglePID RollGain() { mixin(MGPC("UDKVehicleSimChopper.AnglePID", 348)); }
			UDKVehicleSimChopper.AnglePID PitchGain() { mixin(MGPC("UDKVehicleSimChopper.AnglePID", 328)); }
			int m_nLastYawInput() { mixin(MGPC("int", 320)); }
			int m_nLastPitchInput() { mixin(MGPC("int", 316)); }
			float ReverseSpeed() { mixin(MGPC("float", 312)); }
			float HoverHeight() { mixin(MGPC("float", 308)); }
		}
		bool bShouldStabilizeRotation() { mixin(MGBPC(324, 0x2)); }
		bool bShouldStabilizeRotation(bool val) { mixin(MSBPC(324, 0x2)); }
		bool m_bInvertFlight() { mixin(MGBPC(324, 0x1)); }
		bool m_bInvertFlight(bool val) { mixin(MSBPC(324, 0x1)); }
	}
	final void SetVehicleControls(bool bInvert)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInvert;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVehicleControls, params.ptr, cast(void*)0);
	}
}

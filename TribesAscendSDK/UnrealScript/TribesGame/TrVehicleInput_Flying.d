module UnrealScript.TribesGame.TrVehicleInput_Flying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerInput;

extern(C++) interface TrVehicleInput_Flying : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleInput_Flying")); }
	private static __gshared TrVehicleInput_Flying mDefaultProperties;
	@property final static TrVehicleInput_Flying DefaultProperties() { mixin(MGDPC("TrVehicleInput_Flying", "TrVehicleInput_Flying TribesGame.Default__TrVehicleInput_Flying")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAdjustMouseSensitivity;
		public @property static final ScriptFunction AdjustMouseSensitivity() { mixin(MGF("mAdjustMouseSensitivity", "Function TribesGame.TrVehicleInput_Flying.AdjustMouseSensitivity")); }
	}
	final void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMouseSensitivity, params.ptr, cast(void*)0);
	}
}

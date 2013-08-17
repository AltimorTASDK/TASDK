module UnrealScript.UTGame.UTGib_VehiclePiece;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTGib_VehiclePiece : UTGib_Vehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGib_VehiclePiece")); }
	private static __gshared UTGib_VehiclePiece mDefaultProperties;
	@property final static UTGib_VehiclePiece DefaultProperties() { mixin(MGDPC("UTGib_VehiclePiece", "UTGib_VehiclePiece UTGame.Default__UTGib_VehiclePiece")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function UTGame.UTGib_VehiclePiece.PreBeginPlay")); }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}

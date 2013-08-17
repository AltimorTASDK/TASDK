module UnrealScript.UTGame.UTVehicleDeathPiece;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTVehicleDeathPiece : UTGib_Vehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVehicleDeathPiece")()); }
	private static __gshared UTVehicleDeathPiece mDefaultProperties;
	@property final static UTVehicleDeathPiece DefaultProperties() { mixin(MGDPC!(UTVehicleDeathPiece, "UTVehicleDeathPiece UTGame.Default__UTVehicleDeathPiece")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTVehicleDeathPiece.PreBeginPlay")()); }
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PSC'!
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}

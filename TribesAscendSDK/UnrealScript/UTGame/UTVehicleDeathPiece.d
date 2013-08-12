module UnrealScript.UTGame.UTVehicleDeathPiece;

import ScriptClasses;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTVehicleDeathPiece : UTGib_Vehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVehicleDeathPiece")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVehicleDeathPiece.PreBeginPlay")); }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}

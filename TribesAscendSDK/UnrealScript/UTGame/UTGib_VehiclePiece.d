module UnrealScript.UTGame.UTGib_VehiclePiece;

import ScriptClasses;
import UnrealScript.UTGame.UTGib_Vehicle;

extern(C++) interface UTGib_VehiclePiece : UTGib_Vehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGib_VehiclePiece")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGib_VehiclePiece.PreBeginPlay")); }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}

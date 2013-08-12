module UnrealScript.TribesGame.TrVehicle_Shrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_BaseFlying;
import UnrealScript.UTGame.UTPawn;

extern(C++) interface TrVehicle_Shrike : TrVehicle_BaseFlying
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicle_Shrike")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSitDriver;
		public @property static final ScriptFunction SitDriver() { return mSitDriver ? mSitDriver : (mSitDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicle_Shrike.SitDriver")); }
	}
	final void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SitDriver, params.ptr, cast(void*)0);
	}
}

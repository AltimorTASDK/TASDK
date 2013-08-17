module UnrealScript.TribesGame.TrDeployable_TripSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrDeployable_Sensor;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrDeployable_TripSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployable_TripSensor")); }
	private static __gshared TrDeployable_TripSensor mDefaultProperties;
	@property final static TrDeployable_TripSensor DefaultProperties() { mixin(MGDPC("TrDeployable_TripSensor", "TrDeployable_TripSensor TribesGame.Default__TrDeployable_TripSensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddTripActor;
			ScriptFunction mRemoveTripActor;
			ScriptFunction mTripActivated;
			ScriptFunction mGetParticleSystemName;
			ScriptFunction mGetTripSocketPosition;
			ScriptFunction mOnTripAwake;
			ScriptFunction mOnTripSleep;
		}
		public @property static final
		{
			ScriptFunction AddTripActor() { mixin(MGF("mAddTripActor", "Function TribesGame.TrDeployable_TripSensor.AddTripActor")); }
			ScriptFunction RemoveTripActor() { mixin(MGF("mRemoveTripActor", "Function TribesGame.TrDeployable_TripSensor.RemoveTripActor")); }
			ScriptFunction TripActivated() { mixin(MGF("mTripActivated", "Function TribesGame.TrDeployable_TripSensor.TripActivated")); }
			ScriptFunction GetParticleSystemName() { mixin(MGF("mGetParticleSystemName", "Function TribesGame.TrDeployable_TripSensor.GetParticleSystemName")); }
			ScriptFunction GetTripSocketPosition() { mixin(MGF("mGetTripSocketPosition", "Function TribesGame.TrDeployable_TripSensor.GetTripSocketPosition")); }
			ScriptFunction OnTripAwake() { mixin(MGF("mOnTripAwake", "Function TribesGame.TrDeployable_TripSensor.OnTripAwake")); }
			ScriptFunction OnTripSleep() { mixin(MGF("mOnTripSleep", "Function TribesGame.TrDeployable_TripSensor.OnTripSleep")); }
		}
	}
	@property final auto ref UObject.Pointer VfTable_IInterface_TrTripNotifier() { mixin(MGPC("UObject.Pointer", 1540)); }
final:
	void AddTripActor(TrTripActor NewTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = NewTrip;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTripActor, params.ptr, cast(void*)0);
	}
	void RemoveTripActor(TrTripActor RemoveTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = RemoveTrip;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveTripActor, params.ptr, cast(void*)0);
	}
	void TripActivated(Pawn Other, Vector ActivateLocation, TrTripActor TripActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = ActivateLocation;
		*cast(TrTripActor*)&params[16] = TripActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.TripActivated, params.ptr, cast(void*)0);
	}
	ParticleSystem GetParticleSystemName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetParticleSystemName, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)params.ptr;
	}
	bool GetTripSocketPosition(bool bIsLeft, ref Vector SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = SocketPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTripSocketPosition, params.ptr, cast(void*)0);
		SocketPosition = *cast(Vector*)&params[4];
		return *cast(bool*)&params[16];
	}
	void OnTripAwake()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTripAwake, cast(void*)0, cast(void*)0);
	}
	void OnTripSleep()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTripSleep, cast(void*)0, cast(void*)0);
	}
}

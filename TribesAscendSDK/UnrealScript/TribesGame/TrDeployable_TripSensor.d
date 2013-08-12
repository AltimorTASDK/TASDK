module UnrealScript.TribesGame.TrDeployable_TripSensor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.TribesGame.TrDeployable_Sensor;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrDeployable_TripSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_TripSensor")); }
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
			ScriptFunction AddTripActor() { return mAddTripActor ? mAddTripActor : (mAddTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.AddTripActor")); }
			ScriptFunction RemoveTripActor() { return mRemoveTripActor ? mRemoveTripActor : (mRemoveTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.RemoveTripActor")); }
			ScriptFunction TripActivated() { return mTripActivated ? mTripActivated : (mTripActivated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.TripActivated")); }
			ScriptFunction GetParticleSystemName() { return mGetParticleSystemName ? mGetParticleSystemName : (mGetParticleSystemName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.GetParticleSystemName")); }
			ScriptFunction GetTripSocketPosition() { return mGetTripSocketPosition ? mGetTripSocketPosition : (mGetTripSocketPosition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.GetTripSocketPosition")); }
			ScriptFunction OnTripAwake() { return mOnTripAwake ? mOnTripAwake : (mOnTripAwake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.OnTripAwake")); }
			ScriptFunction OnTripSleep() { return mOnTripSleep ? mOnTripSleep : (mOnTripSleep = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TripSensor.OnTripSleep")); }
		}
	}
	@property final auto ref UObject.Pointer VfTable_IInterface_TrTripNotifier() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1540); }
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
	bool GetTripSocketPosition(bool bIsLeft, Vector* SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = *SocketPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTripSocketPosition, params.ptr, cast(void*)0);
		*SocketPosition = *cast(Vector*)&params[4];
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

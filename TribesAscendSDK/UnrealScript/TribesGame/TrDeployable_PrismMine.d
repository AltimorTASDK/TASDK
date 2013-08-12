module UnrealScript.TribesGame.TrDeployable_PrismMine;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrDeployable_PrismMine : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_PrismMine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateTripActor;
			ScriptFunction mDestroyTripActor;
			ScriptFunction mAddTripActor;
			ScriptFunction mRemoveTripActor;
			ScriptFunction mTripActivated;
			ScriptFunction mGetParticleSystemName;
			ScriptFunction mGetTripSocketPosition;
			ScriptFunction mOnTripAwake;
			ScriptFunction mOnTripSleep;
			ScriptFunction mDeployComplete;
			ScriptFunction mNoConnectionExists;
			ScriptFunction mOnPowerStatusChanged;
		}
		public @property static final
		{
			ScriptFunction CreateTripActor() { return mCreateTripActor ? mCreateTripActor : (mCreateTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.CreateTripActor")); }
			ScriptFunction DestroyTripActor() { return mDestroyTripActor ? mDestroyTripActor : (mDestroyTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.DestroyTripActor")); }
			ScriptFunction AddTripActor() { return mAddTripActor ? mAddTripActor : (mAddTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.AddTripActor")); }
			ScriptFunction RemoveTripActor() { return mRemoveTripActor ? mRemoveTripActor : (mRemoveTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.RemoveTripActor")); }
			ScriptFunction TripActivated() { return mTripActivated ? mTripActivated : (mTripActivated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.TripActivated")); }
			ScriptFunction GetParticleSystemName() { return mGetParticleSystemName ? mGetParticleSystemName : (mGetParticleSystemName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.GetParticleSystemName")); }
			ScriptFunction GetTripSocketPosition() { return mGetTripSocketPosition ? mGetTripSocketPosition : (mGetTripSocketPosition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.GetTripSocketPosition")); }
			ScriptFunction OnTripAwake() { return mOnTripAwake ? mOnTripAwake : (mOnTripAwake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.OnTripAwake")); }
			ScriptFunction OnTripSleep() { return mOnTripSleep ? mOnTripSleep : (mOnTripSleep = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.OnTripSleep")); }
			ScriptFunction DeployComplete() { return mDeployComplete ? mDeployComplete : (mDeployComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.DeployComplete")); }
			ScriptFunction NoConnectionExists() { return mNoConnectionExists ? mNoConnectionExists : (mNoConnectionExists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.NoConnectionExists")); }
			ScriptFunction OnPowerStatusChanged() { return mOnPowerStatusChanged ? mOnPowerStatusChanged : (mOnPowerStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_PrismMine.OnPowerStatusChanged")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrTripActor) m_aTripActors() { return *cast(ScriptArray!(TrTripActor)*)(cast(size_t)cast(void*)this + 1528); }
		SoundCue m_HitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1576); }
		SoundCue m_DeactivateSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1572); }
		SoundCue m_ActivateSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1568); }
		ParticleSystem m_LaserTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1564); }
		int m_DamageAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 1560); }
		float m_fSleepTimeAfterHit() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
		ScriptClass m_DamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1552); }
		ScriptName m_nSocketTraceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1544); }
		float m_fPrismRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
		UObject.Pointer VfTable_IInterface_TrTripNotifier() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1524); }
	}
final:
	void CreateTripActor(TrDeployable_PrismMine Right, Vector LeftLocation, Vector RightLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(TrDeployable_PrismMine*)params.ptr = Right;
		*cast(Vector*)&params[4] = LeftLocation;
		*cast(Vector*)&params[16] = RightLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTripActor, params.ptr, cast(void*)0);
	}
	void DestroyTripActor(TrTripActor DestroyTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = DestroyTrip;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyTripActor, params.ptr, cast(void*)0);
	}
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
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	bool NoConnectionExists(TrDeployable_PrismMine AdjacentMine)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDeployable_PrismMine*)params.ptr = AdjacentMine;
		(cast(ScriptObject)this).ProcessEvent(Functions.NoConnectionExists, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
}

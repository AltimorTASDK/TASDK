module UnrealScript.TribesGame.TrProj_PrismMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrProj_PrismMine : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_PrismMine")); }
	private static __gshared TrProj_PrismMine mDefaultProperties;
	@property final static TrProj_PrismMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_PrismMine)("TrProj_PrismMine TribesGame.Default__TrProj_PrismMine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPawnEnteredDetonationArea;
			ScriptFunction mInitProjectile;
			ScriptFunction mArmedTimer;
			ScriptFunction mShutDown;
			ScriptFunction mCreateTripActor;
			ScriptFunction mTripActivated;
			ScriptFunction mGetParticleSystemName;
			ScriptFunction mGetTripSocketPosition;
			ScriptFunction mOnTripAwake;
			ScriptFunction mOnTripSleep;
			ScriptFunction mAddTripActor;
			ScriptFunction mRemoveTripActor;
		}
		public @property static final
		{
			ScriptFunction PawnEnteredDetonationArea() { return mPawnEnteredDetonationArea ? mPawnEnteredDetonationArea : (mPawnEnteredDetonationArea = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.PawnEnteredDetonationArea")); }
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.InitProjectile")); }
			ScriptFunction ArmedTimer() { return mArmedTimer ? mArmedTimer : (mArmedTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.ArmedTimer")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.ShutDown")); }
			ScriptFunction CreateTripActor() { return mCreateTripActor ? mCreateTripActor : (mCreateTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.CreateTripActor")); }
			ScriptFunction TripActivated() { return mTripActivated ? mTripActivated : (mTripActivated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.TripActivated")); }
			ScriptFunction GetParticleSystemName() { return mGetParticleSystemName ? mGetParticleSystemName : (mGetParticleSystemName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.GetParticleSystemName")); }
			ScriptFunction GetTripSocketPosition() { return mGetTripSocketPosition ? mGetTripSocketPosition : (mGetTripSocketPosition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.GetTripSocketPosition")); }
			ScriptFunction OnTripAwake() { return mOnTripAwake ? mOnTripAwake : (mOnTripAwake = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.OnTripAwake")); }
			ScriptFunction OnTripSleep() { return mOnTripSleep ? mOnTripSleep : (mOnTripSleep = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.OnTripSleep")); }
			ScriptFunction AddTripActor() { return mAddTripActor ? mAddTripActor : (mAddTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.AddTripActor")); }
			ScriptFunction RemoveTripActor() { return mRemoveTripActor ? mRemoveTripActor : (mRemoveTripActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PrismMine.RemoveTripActor")); }
		}
	}
	@property final auto ref
	{
		Vector r_vRightHit() { return *cast(Vector*)(cast(size_t)cast(void*)this + 936); }
		Vector r_vLeftHit() { return *cast(Vector*)(cast(size_t)cast(void*)this + 924); }
		ScriptName m_nSocketTraceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 916); }
		ParticleSystem m_LaserTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 912); }
		float m_fTripDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
		TrTripActor m_TripActor() { return *cast(TrTripActor*)(cast(size_t)cast(void*)this + 904); }
		UObject.Pointer VfTable_IInterface_TrTripNotifier() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 900); }
	}
final:
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredDetonationArea, params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ArmedTimer, cast(void*)0, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void CreateTripActor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTripActor, cast(void*)0, cast(void*)0);
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
}

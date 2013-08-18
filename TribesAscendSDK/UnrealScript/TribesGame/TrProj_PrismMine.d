module UnrealScript.TribesGame.TrProj_PrismMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrProj_PrismMine : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_PrismMine")); }
	private static __gshared TrProj_PrismMine mDefaultProperties;
	@property final static TrProj_PrismMine DefaultProperties() { mixin(MGDPC("TrProj_PrismMine", "TrProj_PrismMine TribesGame.Default__TrProj_PrismMine")); }
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
			ScriptFunction PawnEnteredDetonationArea() { mixin(MGF("mPawnEnteredDetonationArea", "Function TribesGame.TrProj_PrismMine.PawnEnteredDetonationArea")); }
			ScriptFunction InitProjectile() { mixin(MGF("mInitProjectile", "Function TribesGame.TrProj_PrismMine.InitProjectile")); }
			ScriptFunction ArmedTimer() { mixin(MGF("mArmedTimer", "Function TribesGame.TrProj_PrismMine.ArmedTimer")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function TribesGame.TrProj_PrismMine.ShutDown")); }
			ScriptFunction CreateTripActor() { mixin(MGF("mCreateTripActor", "Function TribesGame.TrProj_PrismMine.CreateTripActor")); }
			ScriptFunction TripActivated() { mixin(MGF("mTripActivated", "Function TribesGame.TrProj_PrismMine.TripActivated")); }
			ScriptFunction GetParticleSystemName() { mixin(MGF("mGetParticleSystemName", "Function TribesGame.TrProj_PrismMine.GetParticleSystemName")); }
			ScriptFunction GetTripSocketPosition() { mixin(MGF("mGetTripSocketPosition", "Function TribesGame.TrProj_PrismMine.GetTripSocketPosition")); }
			ScriptFunction OnTripAwake() { mixin(MGF("mOnTripAwake", "Function TribesGame.TrProj_PrismMine.OnTripAwake")); }
			ScriptFunction OnTripSleep() { mixin(MGF("mOnTripSleep", "Function TribesGame.TrProj_PrismMine.OnTripSleep")); }
			ScriptFunction AddTripActor() { mixin(MGF("mAddTripActor", "Function TribesGame.TrProj_PrismMine.AddTripActor")); }
			ScriptFunction RemoveTripActor() { mixin(MGF("mRemoveTripActor", "Function TribesGame.TrProj_PrismMine.RemoveTripActor")); }
		}
	}
	@property final auto ref
	{
		Vector r_vRightHit() { mixin(MGPC("Vector", 936)); }
		Vector r_vLeftHit() { mixin(MGPC("Vector", 924)); }
		ScriptName m_nSocketTraceName() { mixin(MGPC("ScriptName", 916)); }
		ParticleSystem m_LaserTemplate() { mixin(MGPC("ParticleSystem", 912)); }
		float m_fTripDistance() { mixin(MGPC("float", 908)); }
		TrTripActor m_TripActor() { mixin(MGPC("TrTripActor", 904)); }
		Pointer VfTable_IInterface_TrTripNotifier() { mixin(MGPC("Pointer", 900)); }
	}
final:
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredDetonationArea, params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass* ClassToInherit = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		if (ClassToInherit !is null)
			*cast(ScriptClass*)&params[12] = *ClassToInherit;
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

module UnrealScript.TribesGame.TrDeployable_PrismMine;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_PrismMine")()); }
	private static __gshared TrDeployable_PrismMine mDefaultProperties;
	@property final static TrDeployable_PrismMine DefaultProperties() { mixin(MGDPC!(TrDeployable_PrismMine, "TrDeployable_PrismMine TribesGame.Default__TrDeployable_PrismMine")()); }
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
			ScriptFunction CreateTripActor() { mixin(MGF!("mCreateTripActor", "Function TribesGame.TrDeployable_PrismMine.CreateTripActor")()); }
			ScriptFunction DestroyTripActor() { mixin(MGF!("mDestroyTripActor", "Function TribesGame.TrDeployable_PrismMine.DestroyTripActor")()); }
			ScriptFunction AddTripActor() { mixin(MGF!("mAddTripActor", "Function TribesGame.TrDeployable_PrismMine.AddTripActor")()); }
			ScriptFunction RemoveTripActor() { mixin(MGF!("mRemoveTripActor", "Function TribesGame.TrDeployable_PrismMine.RemoveTripActor")()); }
			ScriptFunction TripActivated() { mixin(MGF!("mTripActivated", "Function TribesGame.TrDeployable_PrismMine.TripActivated")()); }
			ScriptFunction GetParticleSystemName() { mixin(MGF!("mGetParticleSystemName", "Function TribesGame.TrDeployable_PrismMine.GetParticleSystemName")()); }
			ScriptFunction GetTripSocketPosition() { mixin(MGF!("mGetTripSocketPosition", "Function TribesGame.TrDeployable_PrismMine.GetTripSocketPosition")()); }
			ScriptFunction OnTripAwake() { mixin(MGF!("mOnTripAwake", "Function TribesGame.TrDeployable_PrismMine.OnTripAwake")()); }
			ScriptFunction OnTripSleep() { mixin(MGF!("mOnTripSleep", "Function TribesGame.TrDeployable_PrismMine.OnTripSleep")()); }
			ScriptFunction DeployComplete() { mixin(MGF!("mDeployComplete", "Function TribesGame.TrDeployable_PrismMine.DeployComplete")()); }
			ScriptFunction NoConnectionExists() { mixin(MGF!("mNoConnectionExists", "Function TribesGame.TrDeployable_PrismMine.NoConnectionExists")()); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF!("mOnPowerStatusChanged", "Function TribesGame.TrDeployable_PrismMine.OnPowerStatusChanged")()); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable_PrismMine.BlownUp")()); }
	}
	@property final auto ref
	{
		ScriptArray!(TrTripActor) m_aTripActors() { mixin(MGPC!(ScriptArray!(TrTripActor), 1528)()); }
		SoundCue m_HitSound() { mixin(MGPC!(SoundCue, 1576)()); }
		SoundCue m_DeactivateSound() { mixin(MGPC!(SoundCue, 1572)()); }
		SoundCue m_ActivateSound() { mixin(MGPC!(SoundCue, 1568)()); }
		ParticleSystem m_LaserTemplate() { mixin(MGPC!(ParticleSystem, 1564)()); }
		int m_DamageAmount() { mixin(MGPC!(int, 1560)()); }
		float m_fSleepTimeAfterHit() { mixin(MGPC!(float, 1556)()); }
		ScriptClass m_DamageType() { mixin(MGPC!(ScriptClass, 1552)()); }
		ScriptName m_nSocketTraceName() { mixin(MGPC!(ScriptName, 1544)()); }
		float m_fPrismRadius() { mixin(MGPC!(float, 1540)()); }
		UObject.Pointer VfTable_IInterface_TrTripNotifier() { mixin(MGPC!(UObject.Pointer, 1524)()); }
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
	bool GetTripSocketPosition(bool bIsLeft, ref Vector SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = SocketPosition;
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

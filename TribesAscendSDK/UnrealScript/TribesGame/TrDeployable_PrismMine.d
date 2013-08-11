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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80237], params.ptr, cast(void*)0);
	}
	void DestroyTripActor(TrTripActor DestroyTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = DestroyTrip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80245], params.ptr, cast(void*)0);
	}
	void AddTripActor(TrTripActor NewTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = NewTrip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80247], params.ptr, cast(void*)0);
	}
	void RemoveTripActor(TrTripActor RemoveTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = RemoveTrip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80250], params.ptr, cast(void*)0);
	}
	void TripActivated(Pawn Other, Vector ActivateLocation, TrTripActor TripActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = ActivateLocation;
		*cast(TrTripActor*)&params[16] = TripActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80253], params.ptr, cast(void*)0);
	}
	ParticleSystem GetParticleSystemName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80257], params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)params.ptr;
	}
	bool GetTripSocketPosition(bool bIsLeft, Vector* SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = *SocketPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80259], params.ptr, cast(void*)0);
		*SocketPosition = *cast(Vector*)&params[4];
		return *cast(bool*)&params[16];
	}
	void OnTripAwake()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80264], cast(void*)0, cast(void*)0);
	}
	void OnTripSleep()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80265], cast(void*)0, cast(void*)0);
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80266], cast(void*)0, cast(void*)0);
	}
	bool NoConnectionExists(TrDeployable_PrismMine AdjacentMine)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDeployable_PrismMine*)params.ptr = AdjacentMine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80270], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80276], cast(void*)0, cast(void*)0);
	}
}

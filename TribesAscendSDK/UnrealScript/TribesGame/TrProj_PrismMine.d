module UnrealScript.TribesGame.TrProj_PrismMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrTripActor;

extern(C++) interface TrProj_PrismMine : TrProj_Mine
{
	public @property final auto ref Vector r_vRightHit() { return *cast(Vector*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref Vector r_vLeftHit() { return *cast(Vector*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref ScriptName m_nSocketTraceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref ParticleSystem m_LaserTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref float m_fTripDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref TrTripActor m_TripActor() { return *cast(TrTripActor*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref UObject.Pointer VfTable_IInterface_TrTripNotifier() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 900); }
	final void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108871], params.ptr, cast(void*)0);
	}
	final void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108873], params.ptr, cast(void*)0);
	}
	final void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108876], cast(void*)0, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108885], cast(void*)0, cast(void*)0);
	}
	final void CreateTripActor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108886], cast(void*)0, cast(void*)0);
	}
	final void TripActivated(Pawn Other, Vector ActivateLocation, TrTripActor TripActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(Vector*)&params[4] = ActivateLocation;
		*cast(TrTripActor*)&params[16] = TripActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108890], params.ptr, cast(void*)0);
	}
	final ParticleSystem GetParticleSystemName()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108894], params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)params.ptr;
	}
	final bool GetTripSocketPosition(bool bIsLeft, Vector* SocketPosition)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bIsLeft;
		*cast(Vector*)&params[4] = *SocketPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108896], params.ptr, cast(void*)0);
		*SocketPosition = *cast(Vector*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void OnTripAwake()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108900], cast(void*)0, cast(void*)0);
	}
	final void OnTripSleep()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108901], cast(void*)0, cast(void*)0);
	}
	final void AddTripActor(TrTripActor NewTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = NewTrip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108902], params.ptr, cast(void*)0);
	}
	final void RemoveTripActor(TrTripActor RemoveTrip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrTripActor*)params.ptr = RemoveTrip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108904], params.ptr, cast(void*)0);
	}
}

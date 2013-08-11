module UnrealScript.TribesGame.TrTripActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrTripActor : Actor
{
	public @property final auto ref float m_fSleepTime() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref Actor r_Left() { return *cast(Actor*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref Actor r_Right() { return *cast(Actor*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool m_bRequiresTwoNotifiers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
	public @property final bool m_bRequiresTwoNotifiers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
	public @property final auto ref ParticleSystem m_LaserTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float r_fSleepEndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final bool r_bIsInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
	public @property final bool r_bIsInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
	public @property final bool r_bIsPowered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
	public @property final bool r_bIsPowered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113260], params.ptr, cast(void*)0);
	}
	final void CreateTripComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113262], cast(void*)0, cast(void*)0);
	}
	final void ClientCreateVisualEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113263], cast(void*)0, cast(void*)0);
	}
	final void DestroyNotify(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* Notifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = Notifier;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113267], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113269], cast(void*)0, cast(void*)0);
	}
	final void InitializeTripPhysics(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* Left, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void* Right)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)params.ptr = Left;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'~
void**)&params[8] = Right;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113270], params.ptr, cast(void*)0);
	}
	final void GoToSleep(bool bIsPowered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsPowered;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113273], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113275], params.ptr, cast(void*)0);
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113278], params.ptr, cast(void*)0);
	}
}

module UnrealScript.UTGame.UTDroppedPickup;

import ScriptClasses;
import UnrealScript.Engine.DroppedPickup;
import UnrealScript.Engine.Actor;

extern(C++) interface UTDroppedPickup : DroppedPickup
{
public extern(D):
	@property final
	{
		@property final auto ref float StartScale() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		bool bPickupable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bPickupable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47247], cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewPickupMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewPickupMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47248], params.ptr, cast(void*)0);
	}
	void SetPickupParticles(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewPickupParticles)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewPickupParticles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47250], params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47252], params.ptr, cast(void*)0);
	}
}

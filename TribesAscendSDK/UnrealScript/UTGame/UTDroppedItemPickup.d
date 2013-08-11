module UnrealScript.UTGame.UTDroppedItemPickup;

import ScriptClasses;
import UnrealScript.UTGame.UTDroppedPickup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;

extern(C++) interface UTDroppedItemPickup : UTDroppedPickup
{
	public @property final auto ref SoundCue PickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	final float BotDesireability(Pawn Bot, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Bot;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47275], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void SetPickupMesh(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* NewPickupMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = NewPickupMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47279], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47281], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47282], cast(void*)0, cast(void*)0);
	}
	final void DroppedFrom(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47283], params.ptr, cast(void*)0);
	}
	final void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47285], params.ptr, cast(void*)0);
	}
}

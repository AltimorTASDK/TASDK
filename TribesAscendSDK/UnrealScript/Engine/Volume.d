module UnrealScript.Engine.Volume;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Brush;
import UnrealScript.Engine.HUD;

extern(C++) interface Volume : Brush
{
	public @property final bool bProcessAllActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
	public @property final bool bProcessAllActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
	public @property final bool bForcePawnWalk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
	public @property final bool bForcePawnWalk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	public @property final auto ref Actor AssociatedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 512); }
	final bool Encompasses(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10142], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool EncompassesPoint(Vector Loc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Loc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10145], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10148], cast(void*)0, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10149], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10164], params.ptr, cast(void*)0);
	}
	final void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10166], cast(void*)0, cast(void*)0);
	}
	final void ProcessActorSetVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10167], params.ptr, cast(void*)0);
	}
}

module UnrealScript.Engine.DynamicSMActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.SeqAct_SetMesh;

extern(C++) interface DynamicSMActor : Actor
{
	public @property final auto ref Vector ReplicatedMeshScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref Rotator ReplicatedMeshRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref Vector ReplicatedMeshTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
	public @property final bool bSafeBaseIfAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
	public @property final bool bSafeBaseIfAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
	public @property final bool bPawnCanBaseOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
	public @property final bool bPawnCanBaseOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
	public @property final bool bForceStaticDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bForceStaticDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final auto ref MaterialInterface ReplicatedMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref StaticMesh ReplicatedMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 484); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14868], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14869], params.ptr, cast(void*)0);
	}
	final void OnSetMesh(SeqAct_SetMesh Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMesh*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14871], params.ptr, cast(void*)0);
	}
	final void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14878], params.ptr, cast(void*)0);
	}
	final void SetStaticMesh(StaticMesh NewMesh, Vector NewTranslation, Rotator NewRotation, Vector NewScale3D)
	{
		ubyte params[40];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		*cast(Vector*)&params[4] = NewTranslation;
		*cast(Rotator*)&params[16] = NewRotation;
		*cast(Vector*)&params[28] = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14882], params.ptr, cast(void*)0);
	}
	final bool CanBasePawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14887], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14890], params.ptr, cast(void*)0);
	}
	final void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14893], params.ptr, cast(void*)0);
	}
	final void SetLightEnvironmentToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14899], cast(void*)0, cast(void*)0);
	}
}

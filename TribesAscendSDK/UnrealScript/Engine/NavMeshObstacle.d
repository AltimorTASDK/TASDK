module UnrealScript.Engine.NavMeshObstacle;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshObstacle : Actor
{
	public @property final bool bPreserveInternalGeo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
	public @property final bool bPreserveInternalGeo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_IInterface_NavMeshPathObstacle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
	final bool GetObstacleBoudingShape(ScriptArray!(Vector)* Shape)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Vector)*)params.ptr = *Shape;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21027], params.ptr, cast(void*)0);
		*Shape = *cast(ScriptArray!(Vector)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final void RegisterObstacle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21033], cast(void*)0, cast(void*)0);
	}
	final void UnRegisterObstacle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21034], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21035], cast(void*)0, cast(void*)0);
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21036], params.ptr, cast(void*)0);
	}
	final void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21038], params.ptr, cast(void*)0);
	}
}

module UnrealScript.Engine.ActorComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.Component;

extern(C++) interface ActorComponent : Component
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.ETickingGroup TickGroup() { return *cast(UObject.ETickingGroup*)(cast(size_t)cast(void*)this + 84); }
			Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 76); }
			// WARNING: Property 'Scene' has the same name as a defined type!
		}
		bool bNeedsUpdateTransform() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
		bool bNeedsUpdateTransform(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
		bool bNeedsReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
		bool bNeedsReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
		bool bTickInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
		bool bTickInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
		bool bAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
		bool bAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
	}
final:
	void SetTickGroup(UObject.ETickingGroup NewTickGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.ETickingGroup*)params.ptr = NewTickGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4734], params.ptr, cast(void*)0);
	}
	void SetComponentRBFixed(bool bFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFixed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4736], params.ptr, cast(void*)0);
	}
	void ForceUpdate(bool bTransformOnly)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTransformOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4738], params.ptr, cast(void*)0);
	}
	void DetachFromAny()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4740], cast(void*)0, cast(void*)0);
	}
}

module UnrealScript.Engine.AnimNodeBlendByProperty;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeBlendByProperty : AnimNodeBlendList
{
	public @property final auto ref float BlendToChild2Time() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float BlendToChild1Time() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float FloatPropMax() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float FloatPropMin() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref Actor CachedOwner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref UObject.Pointer CachedByteProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref UObject.Pointer CachedBoolProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref UObject.Pointer CachedFloatProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptName CachedPropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 288); }
	public @property final bool bSynchronizeNodesInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x8) != 0; }
	public @property final bool bSynchronizeNodesInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x8; } return val; }
	public @property final bool bUseSpecificBlendTimes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x4) != 0; }
	public @property final bool bUseSpecificBlendTimes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x4; } return val; }
	public @property final bool bForceUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x2) != 0; }
	public @property final bool bForceUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x2; } return val; }
	public @property final bool bUseOwnersBase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x1) != 0; }
	public @property final bool bUseOwnersBase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x1; } return val; }
	public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
}

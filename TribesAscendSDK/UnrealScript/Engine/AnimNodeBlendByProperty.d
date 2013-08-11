module UnrealScript.Engine.AnimNodeBlendByProperty;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeBlendByProperty : AnimNodeBlendList
{
public extern(D):
	@property final
	{
		auto ref
		{
			float BlendToChild2Time() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float BlendToChild1Time() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float FloatPropMax() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float FloatPropMin() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			Actor CachedOwner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 308); }
			UObject.Pointer CachedByteProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 304); }
			UObject.Pointer CachedBoolProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 300); }
			UObject.Pointer CachedFloatProperty() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 296); }
			ScriptName CachedPropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 288); }
			ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
		}
		bool bSynchronizeNodesInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x8) != 0; }
		bool bSynchronizeNodesInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x8; } return val; }
		bool bUseSpecificBlendTimes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x4) != 0; }
		bool bUseSpecificBlendTimes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x4; } return val; }
		bool bForceUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x2) != 0; }
		bool bForceUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x2; } return val; }
		bool bUseOwnersBase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x1) != 0; }
		bool bUseOwnersBase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x1; } return val; }
	}
}

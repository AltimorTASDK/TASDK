module UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeJumpLeanOffset : AnimNodeAimOffset
{
	public @property final auto ref float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref float LeanWeightTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref float LeanWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref UObject.Vector2D PreBlendAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref ScriptName OldAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref AnimNodeAimOffset CachedAimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 328); }
	public @property final bool bOldDoubleJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x10) != 0; }
	public @property final bool bOldDoubleJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x10; } return val; }
	public @property final bool bDoubleJumping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x8) != 0; }
	public @property final bool bDoubleJumping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x8; } return val; }
	public @property final bool bOldDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x4) != 0; }
	public @property final bool bOldDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x4; } return val; }
	public @property final bool bDodging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x2) != 0; }
	public @property final bool bDodging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x2; } return val; }
	public @property final bool bMultiplyByZVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 324) & 0x1) != 0; }
	public @property final bool bMultiplyByZVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 324) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 324) &= ~0x1; } return val; }
	public @property final auto ref float MaxLeanChangeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float JumpLeanStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	final void SetLeanWeight(float WeightTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = WeightTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34603], params.ptr, cast(void*)0);
	}
}

module UnrealScript.Engine.SeqAct_CameraLookAt;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraLookAt : SequenceAction
{
	public @property final auto ref float RemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float CameraFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float TotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref ScriptString TextDisplay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptName FocusBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UObject.Vector2D InFocusFOV() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref UObject.Vector2D InterpSpeedRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 236); }
	public @property final bool bCheckLineOfSight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x800) != 0; }
	public @property final bool bCheckLineOfSight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x800; } return val; }
	public @property final bool bUsedTimer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x400) != 0; }
	public @property final bool bUsedTimer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x400; } return val; }
	public @property final bool bDisableInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x200) != 0; }
	public @property final bool bDisableInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x200; } return val; }
	public @property final bool bLeaveCameraRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x100) != 0; }
	public @property final bool bLeaveCameraRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x100; } return val; }
	public @property final bool bToggleGodMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x80) != 0; }
	public @property final bool bToggleGodMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x80; } return val; }
	public @property final bool bRotatePlayerWithCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x40) != 0; }
	public @property final bool bRotatePlayerWithCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x40; } return val; }
	public @property final bool bAffectHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
	public @property final bool bAffectHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
	public @property final bool bIgnoreTrace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
	public @property final bool bIgnoreTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
	public @property final bool bTurnInPlace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bTurnInPlace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final bool bAdjustCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bAdjustCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bAlwaysFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bAlwaysFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bAffectCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bAffectCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25633], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

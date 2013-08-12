module UnrealScript.Engine.SeqAct_CameraLookAt;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraLookAt : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_CameraLookAt")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_CameraLookAt.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			float RemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float CameraFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			float TotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			ScriptString TextDisplay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
			ScriptName FocusBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
			UObject.Vector2D InFocusFOV() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 244); }
			UObject.Vector2D InterpSpeedRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bCheckLineOfSight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x800) != 0; }
		bool bCheckLineOfSight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x800; } return val; }
		bool bUsedTimer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x400) != 0; }
		bool bUsedTimer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x400; } return val; }
		bool bDisableInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x200) != 0; }
		bool bDisableInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x200; } return val; }
		bool bLeaveCameraRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x100) != 0; }
		bool bLeaveCameraRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x100; } return val; }
		bool bToggleGodMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x80) != 0; }
		bool bToggleGodMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x80; } return val; }
		bool bRotatePlayerWithCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x40) != 0; }
		bool bRotatePlayerWithCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x40; } return val; }
		bool bAffectHead() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
		bool bAffectHead(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
		bool bIgnoreTrace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
		bool bIgnoreTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
		bool bTurnInPlace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
		bool bTurnInPlace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
		bool bAdjustCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
		bool bAdjustCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
		bool bAlwaysFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bAlwaysFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bAffectCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bAffectCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

module UnrealScript.UDKBase.UDKSkelControl_LockRotation;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_LockRotation : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_LockRotation")); }
	@property final
	{
		auto ref
		{
			ScriptName RotationSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 220); }
			SkelControlBase.EBoneControlSpace LockRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 216); }
			Rotator MaxDelta() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 204); }
			Rotator LockRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bLockRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
		bool bLockRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
		bool bLockYaw() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
		bool bLockYaw(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
		bool bLockPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bLockPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
}

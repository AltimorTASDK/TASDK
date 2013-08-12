module UnrealScript.GameFramework.GameThirdPersonCameraMode_Default;

import ScriptClasses;
import UnrealScript.GameFramework.GameThirdPersonCameraMode;

extern(C++) interface GameThirdPersonCameraMode_Default : GameThirdPersonCameraMode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameThirdPersonCameraMode_Default")); }
	@property final
	{
		auto ref
		{
			float TemporaryOriginRotInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float WorstLocAimingZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
		}
		bool bTemporaryOriginRotInterp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 564) & 0x1) != 0; }
		bool bTemporaryOriginRotInterp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 564) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 564) &= ~0x1; } return val; }
	}
}

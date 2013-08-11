module UnrealScript.Engine.AnimNodeBlendDirectional;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendDirectional : AnimNodeBlendBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			Rotator RotationOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 256); }
			int SingleAnimAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			float DirAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float DirDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bUseAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bUseAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
}

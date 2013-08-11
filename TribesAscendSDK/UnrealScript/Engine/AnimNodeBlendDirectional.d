module UnrealScript.Engine.AnimNodeBlendDirectional;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendDirectional : AnimNodeBlendBase
{
	public @property final bool bUseAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bUseAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	public @property final auto ref Rotator RotationOffset() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int SingleAnimAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float DirAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float DirDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
}

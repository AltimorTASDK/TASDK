module UnrealScript.Engine.AnimNodeBlendBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendBySpeed : AnimNodeBlendList
{
	public @property final auto ref ScriptArray!(float) Constraints() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float BlendDelayRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float BlendDownDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float BlendUpDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final bool bUseAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x1) != 0; }
	public @property final bool bUseAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x1; } return val; }
	public @property final auto ref float BlendDownPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float BlendDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float BlendUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref int LastChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
}

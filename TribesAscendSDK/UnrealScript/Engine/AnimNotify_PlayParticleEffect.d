module UnrealScript.Engine.AnimNotify_PlayParticleEffect;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_PlayParticleEffect : AnimNotify
{
	public @property final auto ref ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bIsExtremeContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bIsExtremeContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final bool bAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bSkipIfOwnerIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
	public @property final bool bSkipIfOwnerIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
	public @property final bool bPreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
	public @property final bool bPreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
}

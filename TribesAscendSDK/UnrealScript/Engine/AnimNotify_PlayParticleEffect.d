module UnrealScript.Engine.AnimNotify_PlayParticleEffect;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_PlayParticleEffect : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_PlayParticleEffect")); }
	@property final
	{
		auto ref
		{
			ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 64); }
			ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bIsExtremeContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bIsExtremeContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
		bool bAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bSkipIfOwnerIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
		bool bSkipIfOwnerIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
		bool bPreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bPreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
	}
}

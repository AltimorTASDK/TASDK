module UnrealScript.Engine.SoundClass;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SoundClass : UObject
{
public extern(D):
	struct SoundClassEditorData
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int NodePosY() { return *cast(int*)(cast(size_t)&this + 4); }
			int NodePosX() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct SoundClassProperties
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final
		{
			auto ref
			{
				float RadioFilterVolumeThreshold() { return *cast(float*)(cast(size_t)&this + 24); }
				float RadioFilterVolume() { return *cast(float*)(cast(size_t)&this + 20); }
				float VoiceCenterChannelVolume() { return *cast(float*)(cast(size_t)&this + 16); }
				float LFEBleed() { return *cast(float*)(cast(size_t)&this + 12); }
				float StereoBleed() { return *cast(float*)(cast(size_t)&this + 8); }
				float Pitch() { return *cast(float*)(cast(size_t)&this + 4); }
				// WARNING: Property 'Volume' has the same name as a defined type!
			}
			bool bBassBoost() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x40) != 0; }
			bool bBassBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x40; } return val; }
			bool bCenterChannelOnly() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x20) != 0; }
			bool bCenterChannelOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x20; } return val; }
			bool bReverb() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x10) != 0; }
			bool bReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x10; } return val; }
			bool bIsMusic() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x8) != 0; }
			bool bIsMusic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x8; } return val; }
			bool bIsUISound() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
			bool bIsUISound(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
			bool bAlwaysPlay() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAlwaysPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bApplyEffects() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bApplyEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) ChildClassNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 92); }
			int MenuID() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			SoundClass.SoundClassProperties Properties() { return *cast(SoundClass.SoundClassProperties*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsChild() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bIsChild(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}

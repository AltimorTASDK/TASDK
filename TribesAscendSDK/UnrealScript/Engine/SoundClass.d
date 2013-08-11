module UnrealScript.Engine.SoundClass;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SoundClass : UObject
{
	struct SoundClassEditorData
	{
		public @property final auto ref int NodePosY() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __NodePosY[4];
		public @property final auto ref int NodePosX() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NodePosX[4];
	}
	struct SoundClassProperties
	{
		public @property final bool bBassBoost() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x40) != 0; }
		public @property final bool bBassBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x40; } return val; }
		private ubyte __bBassBoost[4];
		public @property final bool bCenterChannelOnly() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x20) != 0; }
		public @property final bool bCenterChannelOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x20; } return val; }
		private ubyte __bCenterChannelOnly[4];
		public @property final bool bReverb() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x10) != 0; }
		public @property final bool bReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x10; } return val; }
		private ubyte __bReverb[4];
		public @property final bool bIsMusic() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x8) != 0; }
		public @property final bool bIsMusic(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x8; } return val; }
		private ubyte __bIsMusic[4];
		public @property final bool bIsUISound() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
		public @property final bool bIsUISound(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
		private ubyte __bIsUISound[4];
		public @property final bool bAlwaysPlay() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAlwaysPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAlwaysPlay[4];
		public @property final bool bApplyEffects() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bApplyEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bApplyEffects[4];
		public @property final auto ref float RadioFilterVolumeThreshold() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __RadioFilterVolumeThreshold[4];
		public @property final auto ref float RadioFilterVolume() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __RadioFilterVolume[4];
		public @property final auto ref float VoiceCenterChannelVolume() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __VoiceCenterChannelVolume[4];
		public @property final auto ref float LFEBleed() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LFEBleed[4];
		public @property final auto ref float StereoBleed() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __StereoBleed[4];
		public @property final auto ref float Pitch() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Pitch[4];
		// WARNING: Property 'Volume' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(ScriptName) ChildClassNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int MenuID() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bIsChild() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bIsChild(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref SoundClass.SoundClassProperties Properties() { return *cast(SoundClass.SoundClassProperties*)(cast(size_t)cast(void*)this + 60); }
}

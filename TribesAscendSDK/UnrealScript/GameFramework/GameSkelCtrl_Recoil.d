module UnrealScript.GameFramework.GameSkelCtrl_Recoil;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface GameSkelCtrl_Recoil : SkelControlBase
{
	enum ERecoilStart : ubyte
	{
		ERS_Zero = 0,
		ERS_Random = 1,
		ERS_MAX = 2,
	}
	struct RecoilParams
	{
		public @property final auto ref ubyte Padding() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		private ubyte __Padding[1];
		public @property final auto ref GameSkelCtrl_Recoil.ERecoilStart Z() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 2); }
		private ubyte __Z[1];
		public @property final auto ref GameSkelCtrl_Recoil.ERecoilStart Y() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 1); }
		private ubyte __Y[1];
		public @property final auto ref GameSkelCtrl_Recoil.ERecoilStart X() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 0); }
		private ubyte __X[1];
	}
	struct RecoilDef
	{
		public @property final auto ref Vector LocOffset() { return *cast(Vector*)(cast(size_t)&this + 100); }
		private ubyte __LocOffset[12];
		public @property final auto ref GameSkelCtrl_Recoil.RecoilParams LocParams() { return *cast(GameSkelCtrl_Recoil.RecoilParams*)(cast(size_t)&this + 96); }
		private ubyte __LocParams[4];
		public @property final auto ref Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 84); }
		private ubyte __LocSinOffset[12];
		public @property final auto ref Vector LocFrequency() { return *cast(Vector*)(cast(size_t)&this + 72); }
		private ubyte __LocFrequency[12];
		public @property final auto ref Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)&this + 60); }
		private ubyte __LocAmplitude[12];
		public @property final auto ref Rotator RotOffset() { return *cast(Rotator*)(cast(size_t)&this + 48); }
		private ubyte __RotOffset[12];
		public @property final auto ref GameSkelCtrl_Recoil.RecoilParams RotParams() { return *cast(GameSkelCtrl_Recoil.RecoilParams*)(cast(size_t)&this + 44); }
		private ubyte __RotParams[4];
		public @property final auto ref Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __RotSinOffset[12];
		public @property final auto ref Vector RotFrequency() { return *cast(Vector*)(cast(size_t)&this + 20); }
		private ubyte __RotFrequency[12];
		public @property final auto ref Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __RotAmplitude[12];
		public @property final auto ref float TimeDuration() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TimeDuration[4];
		public @property final auto ref float TimeToGo() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __TimeToGo[4];
	}
	public @property final auto ref UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref GameSkelCtrl_Recoil.RecoilDef Recoil() { return *cast(GameSkelCtrl_Recoil.RecoilDef*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bApplyControl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
	public @property final bool bApplyControl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
	public @property final bool bOldPlayRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
	public @property final bool bOldPlayRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
	public @property final bool bPlayRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
	public @property final bool bPlayRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
	public @property final bool bBoneSpaceRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
	public @property final bool bBoneSpaceRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
}

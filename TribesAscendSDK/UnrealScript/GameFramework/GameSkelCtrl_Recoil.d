module UnrealScript.GameFramework.GameSkelCtrl_Recoil;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface GameSkelCtrl_Recoil : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameSkelCtrl_Recoil")); }
	private static __gshared GameSkelCtrl_Recoil mDefaultProperties;
	@property final static GameSkelCtrl_Recoil DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameSkelCtrl_Recoil)("GameSkelCtrl_Recoil GameFramework.Default__GameSkelCtrl_Recoil")); }
	enum ERecoilStart : ubyte
	{
		ERS_Zero = 0,
		ERS_Random = 1,
		ERS_MAX = 2,
	}
	struct RecoilParams
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameSkelCtrl_Recoil.RecoilParams")); }
		@property final auto ref
		{
			ubyte Padding() { return *cast(ubyte*)(cast(size_t)&this + 3); }
			GameSkelCtrl_Recoil.ERecoilStart Z() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 2); }
			GameSkelCtrl_Recoil.ERecoilStart Y() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 1); }
			GameSkelCtrl_Recoil.ERecoilStart X() { return *cast(GameSkelCtrl_Recoil.ERecoilStart*)(cast(size_t)&this + 0); }
		}
	}
	struct RecoilDef
	{
		private ubyte __buffer__[112];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameSkelCtrl_Recoil.RecoilDef")); }
		@property final auto ref
		{
			Vector LocOffset() { return *cast(Vector*)(cast(size_t)&this + 100); }
			GameSkelCtrl_Recoil.RecoilParams LocParams() { return *cast(GameSkelCtrl_Recoil.RecoilParams*)(cast(size_t)&this + 96); }
			Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 84); }
			Vector LocFrequency() { return *cast(Vector*)(cast(size_t)&this + 72); }
			Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)&this + 60); }
			Rotator RotOffset() { return *cast(Rotator*)(cast(size_t)&this + 48); }
			GameSkelCtrl_Recoil.RecoilParams RotParams() { return *cast(GameSkelCtrl_Recoil.RecoilParams*)(cast(size_t)&this + 44); }
			Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
			Vector RotFrequency() { return *cast(Vector*)(cast(size_t)&this + 20); }
			Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)&this + 8); }
			float TimeDuration() { return *cast(float*)(cast(size_t)&this + 4); }
			float TimeToGo() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 304); }
			GameSkelCtrl_Recoil.RecoilDef Recoil() { return *cast(GameSkelCtrl_Recoil.RecoilDef*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bApplyControl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x8) != 0; }
		bool bApplyControl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x8; } return val; }
		bool bOldPlayRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x4) != 0; }
		bool bOldPlayRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x4; } return val; }
		bool bPlayRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x2) != 0; }
		bool bPlayRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x2; } return val; }
		bool bBoneSpaceRecoil() { return (*cast(uint*)(cast(size_t)cast(void*)this + 188) & 0x1) != 0; }
		bool bBoneSpaceRecoil(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 188) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 188) &= ~0x1; } return val; }
	}
}

module UnrealScript.GameFramework.GameSkelCtrl_Recoil;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface GameSkelCtrl_Recoil : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameSkelCtrl_Recoil")()); }
	private static __gshared GameSkelCtrl_Recoil mDefaultProperties;
	@property final static GameSkelCtrl_Recoil DefaultProperties() { mixin(MGDPC!(GameSkelCtrl_Recoil, "GameSkelCtrl_Recoil GameFramework.Default__GameSkelCtrl_Recoil")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameSkelCtrl_Recoil.RecoilParams")()); }
		@property final auto ref
		{
			ubyte Padding() { mixin(MGPS!(ubyte, 3)()); }
			GameSkelCtrl_Recoil.ERecoilStart Z() { mixin(MGPS!(GameSkelCtrl_Recoil.ERecoilStart, 2)()); }
			GameSkelCtrl_Recoil.ERecoilStart Y() { mixin(MGPS!(GameSkelCtrl_Recoil.ERecoilStart, 1)()); }
			GameSkelCtrl_Recoil.ERecoilStart X() { mixin(MGPS!(GameSkelCtrl_Recoil.ERecoilStart, 0)()); }
		}
	}
	struct RecoilDef
	{
		private ubyte __buffer__[112];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameSkelCtrl_Recoil.RecoilDef")()); }
		@property final auto ref
		{
			Vector LocOffset() { mixin(MGPS!(Vector, 100)()); }
			GameSkelCtrl_Recoil.RecoilParams LocParams() { mixin(MGPS!(GameSkelCtrl_Recoil.RecoilParams, 96)()); }
			Vector LocSinOffset() { mixin(MGPS!(Vector, 84)()); }
			Vector LocFrequency() { mixin(MGPS!(Vector, 72)()); }
			Vector LocAmplitude() { mixin(MGPS!(Vector, 60)()); }
			Rotator RotOffset() { mixin(MGPS!(Rotator, 48)()); }
			GameSkelCtrl_Recoil.RecoilParams RotParams() { mixin(MGPS!(GameSkelCtrl_Recoil.RecoilParams, 44)()); }
			Vector RotSinOffset() { mixin(MGPS!(Vector, 32)()); }
			Vector RotFrequency() { mixin(MGPS!(Vector, 20)()); }
			Vector RotAmplitude() { mixin(MGPS!(Vector, 8)()); }
			float TimeDuration() { mixin(MGPS!(float, 4)()); }
			float TimeToGo() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Vector2D Aim() { mixin(MGPC!(UObject.Vector2D, 304)()); }
			GameSkelCtrl_Recoil.RecoilDef Recoil() { mixin(MGPC!(GameSkelCtrl_Recoil.RecoilDef, 192)()); }
		}
		bool bApplyControl() { mixin(MGBPC!(188, 0x8)()); }
		bool bApplyControl(bool val) { mixin(MSBPC!(188, 0x8)()); }
		bool bOldPlayRecoil() { mixin(MGBPC!(188, 0x4)()); }
		bool bOldPlayRecoil(bool val) { mixin(MSBPC!(188, 0x4)()); }
		bool bPlayRecoil() { mixin(MGBPC!(188, 0x2)()); }
		bool bPlayRecoil(bool val) { mixin(MSBPC!(188, 0x2)()); }
		bool bBoneSpaceRecoil() { mixin(MGBPC!(188, 0x1)()); }
		bool bBoneSpaceRecoil(bool val) { mixin(MSBPC!(188, 0x1)()); }
	}
}

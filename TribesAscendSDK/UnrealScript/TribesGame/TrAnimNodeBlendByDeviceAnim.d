module UnrealScript.TribesGame.TrAnimNodeBlendByDeviceAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrAnimNodeBlendByDeviceAnim : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByDeviceAnim")); }
	private static __gshared TrAnimNodeBlendByDeviceAnim mDefaultProperties;
	@property final static TrAnimNodeBlendByDeviceAnim DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByDeviceAnim", "TrAnimNodeBlendByDeviceAnim TribesGame.Default__TrAnimNodeBlendByDeviceAnim")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStopAnim;
			ScriptFunction mSetActiveChild;
			ScriptFunction mPlayIdle;
			ScriptFunction mPlayAltIdle;
			ScriptFunction mPlayBuildup;
			ScriptFunction mPlayFire;
			ScriptFunction mPlayPutaway;
			ScriptFunction mPlayRetrieve;
			ScriptFunction mPlayReload;
			ScriptFunction mPlayOffhand;
			ScriptFunction mOnStopFire;
			ScriptFunction mPlayDryFire;
			ScriptFunction mPlayQuickRetrieve;
		}
		public @property static final
		{
			ScriptFunction StopAnim() { mixin(MGF("mStopAnim", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.StopAnim")); }
			ScriptFunction SetActiveChild() { mixin(MGF("mSetActiveChild", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.SetActiveChild")); }
			ScriptFunction PlayIdle() { mixin(MGF("mPlayIdle", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayIdle")); }
			ScriptFunction PlayAltIdle() { mixin(MGF("mPlayAltIdle", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayAltIdle")); }
			ScriptFunction PlayBuildup() { mixin(MGF("mPlayBuildup", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayBuildup")); }
			ScriptFunction PlayFire() { mixin(MGF("mPlayFire", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayFire")); }
			ScriptFunction PlayPutaway() { mixin(MGF("mPlayPutaway", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayPutaway")); }
			ScriptFunction PlayRetrieve() { mixin(MGF("mPlayRetrieve", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayRetrieve")); }
			ScriptFunction PlayReload() { mixin(MGF("mPlayReload", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayReload")); }
			ScriptFunction PlayOffhand() { mixin(MGF("mPlayOffhand", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayOffhand")); }
			ScriptFunction OnStopFire() { mixin(MGF("mOnStopFire", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.OnStopFire")); }
			ScriptFunction PlayDryFire() { mixin(MGF("mPlayDryFire", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayDryFire")); }
			ScriptFunction PlayQuickRetrieve() { mixin(MGF("mPlayQuickRetrieve", "Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayQuickRetrieve")); }
		}
	}
	struct DeviceNodeCameraAnimation
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation")); }
		@property final
		{
			auto ref
			{
				float BlendOutTime() { mixin(MGPS("float", 24)); }
				float BlendInTime() { mixin(MGPS("float", 20)); }
				float Scale() { mixin(MGPS("float", 16)); }
				float Rate() { mixin(MGPS("float", 12)); }
				CameraAnimInst CameraAnimInstance() { mixin(MGPS("CameraAnimInst", 8)); }
				// WARNING: Property 'CameraAnim' has the same name as a defined type!
				int ChildIndex() { mixin(MGPS("int", 0)); }
			}
			bool bRandomStartTime() { mixin(MGBPS(28, 0x2)); }
			bool bRandomStartTime(bool val) { mixin(MSBPS(28, 0x2)); }
			bool bLoop() { mixin(MGBPS(28, 0x1)); }
			bool bLoop(bool val) { mixin(MSBPS(28, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) m_nmRecoilControlNames() { mixin(MGPC("ScriptArray!(ScriptName)", 312)); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilControls() { mixin(MGPC("ScriptArray!(GameSkelCtrl_Recoil)", 324)); }
			ScriptArray!(GameSkelCtrl_Recoil) m_TinyWeaponsRecoilControls() { mixin(MGPC("ScriptArray!(GameSkelCtrl_Recoil)", 336)); }
			ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation) m_CameraAnimations() { mixin(MGPC("ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation)", 408)); }
			int m_nSocketIndex() { mixin(MGPC("int", 404)); }
			TrAnimNodeBlendByDeviceAnim m_SecondaryDeviceBlendNode() { mixin(MGPC("TrAnimNodeBlendByDeviceAnim", 400)); }
			ScriptName m_SecondaryDeviceBlendNodeName() { mixin(MGPC("ScriptName", 392)); }
			ScriptName m_StandardReloadAnimName() { mixin(MGPC("ScriptName", 384)); }
			ScriptName m_ReloadPartialClipAnimName() { mixin(MGPC("ScriptName", 376)); }
			ScriptName m_StandardFireAnimName() { mixin(MGPC("ScriptName", 368)); }
			ScriptName m_DryFireAnimName() { mixin(MGPC("ScriptName", 360)); }
			ScriptName m_FireFinalRoundAnimName() { mixin(MGPC("ScriptName", 352)); }
			TrSkelControl_SpinControl m_BuildupFireSpinControl() { mixin(MGPC("TrSkelControl_SpinControl", 308)); }
			ScriptName m_nmBuildupFireSpinControlName() { mixin(MGPC("ScriptName", 300)); }
			TrDevice m_Device() { mixin(MGPC("TrDevice", 296)); }
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 292)); }
		}
		bool m_bScalePutawayRetrieveAnims() { mixin(MGBPC(348, 0x8)); }
		bool m_bScalePutawayRetrieveAnims(bool val) { mixin(MSBPC(348, 0x8)); }
		bool m_bScaleFireByRefireTime() { mixin(MGBPC(348, 0x4)); }
		bool m_bScaleFireByRefireTime(bool val) { mixin(MSBPC(348, 0x4)); }
		bool m_bPlayFire() { mixin(MGBPC(348, 0x2)); }
		bool m_bPlayFire(bool val) { mixin(MSBPC(348, 0x2)); }
		bool m_bPlayBuildUp() { mixin(MGBPC(348, 0x1)); }
		bool m_bPlayBuildUp(bool val) { mixin(MSBPC(348, 0x1)); }
	}
final:
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAnim, cast(void*)0, cast(void*)0);
	}
	void SetActiveChild(int ChildIndex, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveChild, params.ptr, cast(void*)0);
	}
	void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdle, cast(void*)0, cast(void*)0);
	}
	void PlayAltIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAltIdle, cast(void*)0, cast(void*)0);
	}
	void PlayBuildup(float BuildupTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = BuildupTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBuildup, params.ptr, cast(void*)0);
	}
	void PlayFire(int SocketIndex, float RefireTime, int RoundsRemainingInClip)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SocketIndex;
		*cast(float*)&params[4] = RefireTime;
		*cast(int*)&params[8] = RoundsRemainingInClip;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFire, params.ptr, cast(void*)0);
	}
	void PlayPutaway(float PutAwayTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PutAwayTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayPutaway, params.ptr, cast(void*)0);
	}
	void PlayRetrieve(float RetrieveTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = RetrieveTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayRetrieve, params.ptr, cast(void*)0);
	}
	void PlayReload(float ReloadTime, int RoundsRemainingInClip)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		*cast(int*)&params[4] = RoundsRemainingInClip;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, params.ptr, cast(void*)0);
	}
	void PlayOffhand(float Rate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Rate;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOffhand, params.ptr, cast(void*)0);
	}
	void OnStopFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStopFire, cast(void*)0, cast(void*)0);
	}
	void PlayDryFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDryFire, cast(void*)0, cast(void*)0);
	}
	void PlayQuickRetrieve()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayQuickRetrieve, cast(void*)0, cast(void*)0);
	}
}

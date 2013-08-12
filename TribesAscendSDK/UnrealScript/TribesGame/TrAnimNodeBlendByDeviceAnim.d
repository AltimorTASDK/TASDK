module UnrealScript.TribesGame.TrAnimNodeBlendByDeviceAnim;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByDeviceAnim")); }
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
			ScriptFunction StopAnim() { return mStopAnim ? mStopAnim : (mStopAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.StopAnim")); }
			ScriptFunction SetActiveChild() { return mSetActiveChild ? mSetActiveChild : (mSetActiveChild = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.SetActiveChild")); }
			ScriptFunction PlayIdle() { return mPlayIdle ? mPlayIdle : (mPlayIdle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayIdle")); }
			ScriptFunction PlayAltIdle() { return mPlayAltIdle ? mPlayAltIdle : (mPlayAltIdle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayAltIdle")); }
			ScriptFunction PlayBuildup() { return mPlayBuildup ? mPlayBuildup : (mPlayBuildup = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayBuildup")); }
			ScriptFunction PlayFire() { return mPlayFire ? mPlayFire : (mPlayFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayFire")); }
			ScriptFunction PlayPutaway() { return mPlayPutaway ? mPlayPutaway : (mPlayPutaway = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayPutaway")); }
			ScriptFunction PlayRetrieve() { return mPlayRetrieve ? mPlayRetrieve : (mPlayRetrieve = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayRetrieve")); }
			ScriptFunction PlayReload() { return mPlayReload ? mPlayReload : (mPlayReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayReload")); }
			ScriptFunction PlayOffhand() { return mPlayOffhand ? mPlayOffhand : (mPlayOffhand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayOffhand")); }
			ScriptFunction OnStopFire() { return mOnStopFire ? mOnStopFire : (mOnStopFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.OnStopFire")); }
			ScriptFunction PlayDryFire() { return mPlayDryFire ? mPlayDryFire : (mPlayDryFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayDryFire")); }
			ScriptFunction PlayQuickRetrieve() { return mPlayQuickRetrieve ? mPlayQuickRetrieve : (mPlayQuickRetrieve = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByDeviceAnim.PlayQuickRetrieve")); }
		}
	}
	struct DeviceNodeCameraAnimation
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation")); }
		@property final
		{
			auto ref
			{
				float BlendOutTime() { return *cast(float*)(cast(size_t)&this + 24); }
				float BlendInTime() { return *cast(float*)(cast(size_t)&this + 20); }
				float Scale() { return *cast(float*)(cast(size_t)&this + 16); }
				float Rate() { return *cast(float*)(cast(size_t)&this + 12); }
				CameraAnimInst CameraAnimInstance() { return *cast(CameraAnimInst*)(cast(size_t)&this + 8); }
				// WARNING: Property 'CameraAnim' has the same name as a defined type!
				int ChildIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bRandomStartTime() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bRandomStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) m_nmRecoilControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 324); }
			ScriptArray!(GameSkelCtrl_Recoil) m_TinyWeaponsRecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 336); }
			ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation) m_CameraAnimations() { return *cast(ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation)*)(cast(size_t)cast(void*)this + 408); }
			int m_nSocketIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
			TrAnimNodeBlendByDeviceAnim m_SecondaryDeviceBlendNode() { return *cast(TrAnimNodeBlendByDeviceAnim*)(cast(size_t)cast(void*)this + 400); }
			ScriptName m_SecondaryDeviceBlendNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 392); }
			ScriptName m_StandardReloadAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 384); }
			ScriptName m_ReloadPartialClipAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 376); }
			ScriptName m_StandardFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
			ScriptName m_DryFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 360); }
			ScriptName m_FireFinalRoundAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
			TrSkelControl_SpinControl m_BuildupFireSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 308); }
			ScriptName m_nmBuildupFireSpinControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 300); }
			TrDevice m_Device() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 296); }
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
		}
		bool m_bScalePutawayRetrieveAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x8) != 0; }
		bool m_bScalePutawayRetrieveAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x8; } return val; }
		bool m_bScaleFireByRefireTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x4) != 0; }
		bool m_bScaleFireByRefireTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x4; } return val; }
		bool m_bPlayFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x2) != 0; }
		bool m_bPlayFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x2; } return val; }
		bool m_bPlayBuildUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x1) != 0; }
		bool m_bPlayBuildUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x1; } return val; }
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

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
	struct DeviceNodeCameraAnimation
	{
		public @property final bool bRandomStartTime() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bRandomStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bRandomStartTime[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref float BlendOutTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __BlendOutTime[4];
		public @property final auto ref float BlendInTime() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __BlendInTime[4];
		public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Scale[4];
		public @property final auto ref float Rate() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Rate[4];
		public @property final auto ref CameraAnimInst CameraAnimInstance() { return *cast(CameraAnimInst*)(cast(size_t)&this + 8); }
		private ubyte __CameraAnimInstance[4];
		// WARNING: Property 'CameraAnim' has the same name as a defined type!
		public @property final auto ref int ChildIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ChildIndex[4];
	}
	public @property final auto ref ScriptArray!(ScriptName) m_nmRecoilControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptArray!(GameSkelCtrl_Recoil) m_RecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref ScriptArray!(GameSkelCtrl_Recoil) m_TinyWeaponsRecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation) m_CameraAnimations() { return *cast(ScriptArray!(TrAnimNodeBlendByDeviceAnim.DeviceNodeCameraAnimation)*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref int m_nSocketIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref TrAnimNodeBlendByDeviceAnim m_SecondaryDeviceBlendNode() { return *cast(TrAnimNodeBlendByDeviceAnim*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptName m_SecondaryDeviceBlendNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptName m_StandardReloadAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptName m_ReloadPartialClipAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref ScriptName m_StandardFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref ScriptName m_DryFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptName m_FireFinalRoundAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
	public @property final bool m_bScalePutawayRetrieveAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x8) != 0; }
	public @property final bool m_bScalePutawayRetrieveAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x8; } return val; }
	public @property final bool m_bScaleFireByRefireTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x4) != 0; }
	public @property final bool m_bScaleFireByRefireTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x4; } return val; }
	public @property final bool m_bPlayFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x2) != 0; }
	public @property final bool m_bPlayFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x2; } return val; }
	public @property final bool m_bPlayBuildUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 348) & 0x1) != 0; }
	public @property final bool m_bPlayBuildUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 348) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 348) &= ~0x1; } return val; }
	public @property final auto ref TrSkelControl_SpinControl m_BuildupFireSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref ScriptName m_nmBuildupFireSpinControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref TrDevice m_Device() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
	final void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66388], cast(void*)0, cast(void*)0);
	}
	final void SetActiveChild(int ChildIndex, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66389], params.ptr, cast(void*)0);
	}
	final void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66392], cast(void*)0, cast(void*)0);
	}
	final void PlayAltIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66393], cast(void*)0, cast(void*)0);
	}
	final void PlayBuildup(float BuildupTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = BuildupTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66394], params.ptr, cast(void*)0);
	}
	final void PlayFire(int SocketIndex, float RefireTime, int RoundsRemainingInClip)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SocketIndex;
		*cast(float*)&params[4] = RefireTime;
		*cast(int*)&params[8] = RoundsRemainingInClip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66396], params.ptr, cast(void*)0);
	}
	final void PlayPutaway(float PutAwayTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PutAwayTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66400], params.ptr, cast(void*)0);
	}
	final void PlayRetrieve(float RetrieveTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = RetrieveTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66403], params.ptr, cast(void*)0);
	}
	final void PlayReload(float ReloadTime, int RoundsRemainingInClip)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		*cast(int*)&params[4] = RoundsRemainingInClip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66406], params.ptr, cast(void*)0);
	}
	final void PlayOffhand(float Rate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Rate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66409], params.ptr, cast(void*)0);
	}
	final void OnStopFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66411], cast(void*)0, cast(void*)0);
	}
	final void PlayDryFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66412], cast(void*)0, cast(void*)0);
	}
	final void PlayQuickRetrieve()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66413], cast(void*)0, cast(void*)0);
	}
}

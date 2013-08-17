module UnrealScript.Engine.AnimNodeSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface AnimNodeSequence : AnimNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeSequence")()); }
	private static __gshared AnimNodeSequence mDefaultProperties;
	@property final static AnimNodeSequence DefaultProperties() { mixin(MGDPC!(AnimNodeSequence, "AnimNodeSequence Engine.Default__AnimNodeSequence")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetAnim;
			ScriptFunction mPlayAnim;
			ScriptFunction mStopAnim;
			ScriptFunction mReplayAnim;
			ScriptFunction mSetPosition;
			ScriptFunction mGetNormalizedPosition;
			ScriptFunction mFindGroupRelativePosition;
			ScriptFunction mFindGroupPosition;
			ScriptFunction mGetGroupRelativePosition;
			ScriptFunction mGetGlobalPlayRate;
			ScriptFunction mGetAnimPlaybackLength;
			ScriptFunction mGetTimeLeft;
			ScriptFunction mSetRootBoneAxisOption;
			ScriptFunction mSetRootBoneRotationOption;
		}
		public @property static final
		{
			ScriptFunction SetAnim() { mixin(MGF!("mSetAnim", "Function Engine.AnimNodeSequence.SetAnim")()); }
			ScriptFunction PlayAnim() { mixin(MGF!("mPlayAnim", "Function Engine.AnimNodeSequence.PlayAnim")()); }
			ScriptFunction StopAnim() { mixin(MGF!("mStopAnim", "Function Engine.AnimNodeSequence.StopAnim")()); }
			ScriptFunction ReplayAnim() { mixin(MGF!("mReplayAnim", "Function Engine.AnimNodeSequence.ReplayAnim")()); }
			ScriptFunction SetPosition() { mixin(MGF!("mSetPosition", "Function Engine.AnimNodeSequence.SetPosition")()); }
			ScriptFunction GetNormalizedPosition() { mixin(MGF!("mGetNormalizedPosition", "Function Engine.AnimNodeSequence.GetNormalizedPosition")()); }
			ScriptFunction FindGroupRelativePosition() { mixin(MGF!("mFindGroupRelativePosition", "Function Engine.AnimNodeSequence.FindGroupRelativePosition")()); }
			ScriptFunction FindGroupPosition() { mixin(MGF!("mFindGroupPosition", "Function Engine.AnimNodeSequence.FindGroupPosition")()); }
			ScriptFunction GetGroupRelativePosition() { mixin(MGF!("mGetGroupRelativePosition", "Function Engine.AnimNodeSequence.GetGroupRelativePosition")()); }
			ScriptFunction GetGlobalPlayRate() { mixin(MGF!("mGetGlobalPlayRate", "Function Engine.AnimNodeSequence.GetGlobalPlayRate")()); }
			ScriptFunction GetAnimPlaybackLength() { mixin(MGF!("mGetAnimPlaybackLength", "Function Engine.AnimNodeSequence.GetAnimPlaybackLength")()); }
			ScriptFunction GetTimeLeft() { mixin(MGF!("mGetTimeLeft", "Function Engine.AnimNodeSequence.GetTimeLeft")()); }
			ScriptFunction SetRootBoneAxisOption() { mixin(MGF!("mSetRootBoneAxisOption", "Function Engine.AnimNodeSequence.SetRootBoneAxisOption")()); }
			ScriptFunction SetRootBoneRotationOption() { mixin(MGF!("mSetRootBoneRotationOption", "Function Engine.AnimNodeSequence.SetRootBoneRotationOption")()); }
		}
	}
	enum ERootRotationOption : ubyte
	{
		RRO_Default = 0,
		RRO_Discard = 1,
		RRO_Extract = 2,
		RRO_MAX = 3,
	}
	enum ERootBoneAxis : ubyte
	{
		RBA_Default = 0,
		RBA_Discard = 1,
		RBA_Translate = 2,
		RBA_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			AnimSequence AnimSeq() { mixin(MGPC!(AnimSequence, 252)()); }
			float Rate() { mixin(MGPC!(float, 232)()); }
			ScriptName AnimSeqName() { mixin(MGPC!(ScriptName, 224)()); }
			float CurrentTime() { mixin(MGPC!(float, 240)()); }
			float PreviousTime() { mixin(MGPC!(float, 244)()); }
			float EndTime() { mixin(MGPC!(float, 248)()); }
			int AnimLinkupIndex() { mixin(MGPC!(int, 256)()); }
			float NotifyWeightThreshold() { mixin(MGPC!(float, 260)()); }
			ScriptName SynchGroupName() { mixin(MGPC!(ScriptName, 264)()); }
			float SynchPosOffset() { mixin(MGPC!(float, 272)()); }
			// WARNING: Property 'CameraAnim' has the same name as a defined type!
			CameraAnimInst ActiveCameraAnimInstance() { mixin(MGPC!(CameraAnimInst, 280)()); }
			float CameraAnimScale() { mixin(MGPC!(float, 284)()); }
			float CameraAnimPlayRate() { mixin(MGPC!(float, 288)()); }
			float CameraAnimBlendInTime() { mixin(MGPC!(float, 292)()); }
			float CameraAnimBlendOutTime() { mixin(MGPC!(float, 296)()); }
			AnimNodeSequence.ERootBoneAxis RootBoneOption() { mixin(MGPC!(AnimNodeSequence.ERootBoneAxis, 300)()); }
			AnimNodeSequence.ERootRotationOption RootRotationOption() { mixin(MGPC!(AnimNodeSequence.ERootRotationOption, 303)()); }
			ScriptArray!(SkelControlBase) MetaDataSkelControlList() { mixin(MGPC!(ScriptArray!(SkelControlBase), 308)()); }
		}
		bool bPlaying() { mixin(MGBPC!(236, 0x1)()); }
		bool bPlaying(bool val) { mixin(MSBPC!(236, 0x1)()); }
		bool bLooping() { mixin(MGBPC!(236, 0x2)()); }
		bool bLooping(bool val) { mixin(MSBPC!(236, 0x2)()); }
		bool bCauseActorAnimEnd() { mixin(MGBPC!(236, 0x4)()); }
		bool bCauseActorAnimEnd(bool val) { mixin(MSBPC!(236, 0x4)()); }
		bool bCauseActorAnimPlay() { mixin(MGBPC!(236, 0x8)()); }
		bool bCauseActorAnimPlay(bool val) { mixin(MSBPC!(236, 0x8)()); }
		bool bZeroRootRotation() { mixin(MGBPC!(236, 0x10)()); }
		bool bZeroRootRotation(bool val) { mixin(MSBPC!(236, 0x10)()); }
		bool bZeroRootTranslation() { mixin(MGBPC!(236, 0x20)()); }
		bool bZeroRootTranslation(bool val) { mixin(MSBPC!(236, 0x20)()); }
		bool bDisableWarningWhenAnimNotFound() { mixin(MGBPC!(236, 0x40)()); }
		bool bDisableWarningWhenAnimNotFound(bool val) { mixin(MSBPC!(236, 0x40)()); }
		bool bNoNotifies() { mixin(MGBPC!(236, 0x80)()); }
		bool bNoNotifies(bool val) { mixin(MSBPC!(236, 0x80)()); }
		bool bForceRefposeWhenNotPlaying() { mixin(MGBPC!(236, 0x100)()); }
		bool bForceRefposeWhenNotPlaying(bool val) { mixin(MSBPC!(236, 0x100)()); }
		bool bIsIssuingNotifies() { mixin(MGBPC!(236, 0x200)()); }
		bool bIsIssuingNotifies(bool val) { mixin(MSBPC!(236, 0x200)()); }
		bool m_bSuppressNotifies() { mixin(MGBPC!(236, 0x400)()); }
		bool m_bSuppressNotifies(bool val) { mixin(MSBPC!(236, 0x400)()); }
		bool bForceAlwaysSlave() { mixin(MGBPC!(236, 0x800)()); }
		bool bForceAlwaysSlave(bool val) { mixin(MSBPC!(236, 0x800)()); }
		bool bSynchronize() { mixin(MGBPC!(236, 0x1000)()); }
		bool bSynchronize(bool val) { mixin(MSBPC!(236, 0x1000)()); }
		bool bReverseSync() { mixin(MGBPC!(236, 0x2000)()); }
		bool bReverseSync(bool val) { mixin(MSBPC!(236, 0x2000)()); }
		bool bShowTimeLineSlider() { mixin(MGBPC!(236, 0x4000)()); }
		bool bShowTimeLineSlider(bool val) { mixin(MSBPC!(236, 0x4000)()); }
		bool bLoopCameraAnim() { mixin(MGBPC!(236, 0x8000)()); }
		bool bLoopCameraAnim(bool val) { mixin(MSBPC!(236, 0x8000)()); }
		bool bRandomizeCameraAnimLoopStartTime() { mixin(MGBPC!(236, 0x10000)()); }
		bool bRandomizeCameraAnimLoopStartTime(bool val) { mixin(MSBPC!(236, 0x10000)()); }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation() { mixin(MGBPC!(236, 0x20000)()); }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation(bool val) { mixin(MSBPC!(236, 0x20000)()); }
	}
final:
	void SetAnim(ScriptName pSequence)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnim, params.ptr, cast(void*)0);
	}
	void PlayAnim(bool bLoop, float InRate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = InRate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnim, params.ptr, cast(void*)0);
	}
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAnim, cast(void*)0, cast(void*)0);
	}
	void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplayAnim, cast(void*)0, cast(void*)0);
	}
	void SetPosition(float NewTime, bool bFireNotifies)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewTime;
		*cast(bool*)&params[4] = bFireNotifies;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
	float GetNormalizedPosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNormalizedPosition, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float FindGroupRelativePosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGroupRelativePosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float FindGroupPosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGroupPosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetGroupRelativePosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGroupRelativePosition, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetGlobalPlayRate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGlobalPlayRate, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetAnimPlaybackLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAnimPlaybackLength, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetTimeLeft()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTimeLeft, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetRootBoneAxisOption(AnimNodeSequence.ERootBoneAxis AxisX, AnimNodeSequence.ERootBoneAxis AxisY, AnimNodeSequence.ERootBoneAxis AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootBoneAxis*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRootBoneAxisOption, params.ptr, cast(void*)0);
	}
	void SetRootBoneRotationOption(AnimNodeSequence.ERootRotationOption AxisX, AnimNodeSequence.ERootRotationOption AxisY, AnimNodeSequence.ERootRotationOption AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootRotationOption*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRootBoneRotationOption, params.ptr, cast(void*)0);
	}
}

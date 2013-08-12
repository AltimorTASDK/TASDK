module UnrealScript.Engine.AnimNodeSequence;

import ScriptClasses;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface AnimNodeSequence : AnimNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeSequence")); }
	private static __gshared AnimNodeSequence mDefaultProperties;
	@property final static AnimNodeSequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeSequence)("AnimNodeSequence Engine.Default__AnimNodeSequence")); }
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
			ScriptFunction SetAnim() { return mSetAnim ? mSetAnim : (mSetAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.SetAnim")); }
			ScriptFunction PlayAnim() { return mPlayAnim ? mPlayAnim : (mPlayAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.PlayAnim")); }
			ScriptFunction StopAnim() { return mStopAnim ? mStopAnim : (mStopAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.StopAnim")); }
			ScriptFunction ReplayAnim() { return mReplayAnim ? mReplayAnim : (mReplayAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.ReplayAnim")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.SetPosition")); }
			ScriptFunction GetNormalizedPosition() { return mGetNormalizedPosition ? mGetNormalizedPosition : (mGetNormalizedPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.GetNormalizedPosition")); }
			ScriptFunction FindGroupRelativePosition() { return mFindGroupRelativePosition ? mFindGroupRelativePosition : (mFindGroupRelativePosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.FindGroupRelativePosition")); }
			ScriptFunction FindGroupPosition() { return mFindGroupPosition ? mFindGroupPosition : (mFindGroupPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.FindGroupPosition")); }
			ScriptFunction GetGroupRelativePosition() { return mGetGroupRelativePosition ? mGetGroupRelativePosition : (mGetGroupRelativePosition = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.GetGroupRelativePosition")); }
			ScriptFunction GetGlobalPlayRate() { return mGetGlobalPlayRate ? mGetGlobalPlayRate : (mGetGlobalPlayRate = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.GetGlobalPlayRate")); }
			ScriptFunction GetAnimPlaybackLength() { return mGetAnimPlaybackLength ? mGetAnimPlaybackLength : (mGetAnimPlaybackLength = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.GetAnimPlaybackLength")); }
			ScriptFunction GetTimeLeft() { return mGetTimeLeft ? mGetTimeLeft : (mGetTimeLeft = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.GetTimeLeft")); }
			ScriptFunction SetRootBoneAxisOption() { return mSetRootBoneAxisOption ? mSetRootBoneAxisOption : (mSetRootBoneAxisOption = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.SetRootBoneAxisOption")); }
			ScriptFunction SetRootBoneRotationOption() { return mSetRootBoneRotationOption ? mSetRootBoneRotationOption : (mSetRootBoneRotationOption = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSequence.SetRootBoneRotationOption")); }
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
			AnimSequence AnimSeq() { return *cast(AnimSequence*)(cast(size_t)cast(void*)this + 252); }
			float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 224); }
			float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float PreviousTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			int AnimLinkupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
			float NotifyWeightThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			ScriptName SynchGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 264); }
			float SynchPosOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			// WARNING: Property 'CameraAnim' has the same name as a defined type!
			CameraAnimInst ActiveCameraAnimInstance() { return *cast(CameraAnimInst*)(cast(size_t)cast(void*)this + 280); }
			float CameraAnimScale() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float CameraAnimPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float CameraAnimBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float CameraAnimBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			AnimNodeSequence.ERootBoneAxis RootBoneOption() { return *cast(AnimNodeSequence.ERootBoneAxis*)(cast(size_t)cast(void*)this + 300); }
			AnimNodeSequence.ERootRotationOption RootRotationOption() { return *cast(AnimNodeSequence.ERootRotationOption*)(cast(size_t)cast(void*)this + 303); }
			ScriptArray!(SkelControlBase) MetaDataSkelControlList() { return *cast(ScriptArray!(SkelControlBase)*)(cast(size_t)cast(void*)this + 308); }
		}
		bool bPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bCauseActorAnimEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bCauseActorAnimEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bCauseActorAnimPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bCauseActorAnimPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bZeroRootRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
		bool bZeroRootRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
		bool bZeroRootTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
		bool bZeroRootTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
		bool bDisableWarningWhenAnimNotFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
		bool bDisableWarningWhenAnimNotFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
		bool bNoNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
		bool bNoNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
		bool bForceRefposeWhenNotPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x100) != 0; }
		bool bForceRefposeWhenNotPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x100; } return val; }
		bool bIsIssuingNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x200) != 0; }
		bool bIsIssuingNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x200; } return val; }
		bool m_bSuppressNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x400) != 0; }
		bool m_bSuppressNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x400; } return val; }
		bool bForceAlwaysSlave() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x800) != 0; }
		bool bForceAlwaysSlave(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x800; } return val; }
		bool bSynchronize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1000) != 0; }
		bool bSynchronize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1000; } return val; }
		bool bReverseSync() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2000) != 0; }
		bool bReverseSync(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2000; } return val; }
		bool bShowTimeLineSlider() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4000) != 0; }
		bool bShowTimeLineSlider(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4000; } return val; }
		bool bLoopCameraAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8000) != 0; }
		bool bLoopCameraAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8000; } return val; }
		bool bRandomizeCameraAnimLoopStartTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10000) != 0; }
		bool bRandomizeCameraAnimLoopStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10000; } return val; }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20000) != 0; }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20000; } return val; }
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

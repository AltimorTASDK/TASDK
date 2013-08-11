module UnrealScript.Engine.AnimNodeSequence;

import ScriptClasses;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface AnimNodeSequence : AnimNode
{
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
	public @property final auto ref AnimSequence AnimSeq() { return *cast(AnimSequence*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	public @property final auto ref float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final auto ref ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 224); }
	public @property final bool bCauseActorAnimEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
	public @property final bool bCauseActorAnimEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
	public @property final bool bCauseActorAnimPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
	public @property final bool bCauseActorAnimPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
	public @property final bool bZeroRootRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
	public @property final bool bZeroRootRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
	public @property final bool bZeroRootTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
	public @property final bool bZeroRootTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
	public @property final bool bDisableWarningWhenAnimNotFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
	public @property final bool bDisableWarningWhenAnimNotFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
	public @property final bool bNoNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
	public @property final bool bNoNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
	public @property final bool bForceRefposeWhenNotPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x100) != 0; }
	public @property final bool bForceRefposeWhenNotPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x100; } return val; }
	public @property final bool bIsIssuingNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x200) != 0; }
	public @property final bool bIsIssuingNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x200; } return val; }
	public @property final bool m_bSuppressNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x400) != 0; }
	public @property final bool m_bSuppressNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x400; } return val; }
	public @property final bool bForceAlwaysSlave() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x800) != 0; }
	public @property final bool bForceAlwaysSlave(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x800; } return val; }
	public @property final bool bSynchronize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1000) != 0; }
	public @property final bool bSynchronize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1000; } return val; }
	public @property final bool bReverseSync() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2000) != 0; }
	public @property final bool bReverseSync(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2000; } return val; }
	public @property final bool bShowTimeLineSlider() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4000) != 0; }
	public @property final bool bShowTimeLineSlider(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4000; } return val; }
	public @property final bool bLoopCameraAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8000) != 0; }
	public @property final bool bLoopCameraAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8000; } return val; }
	public @property final bool bRandomizeCameraAnimLoopStartTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10000) != 0; }
	public @property final bool bRandomizeCameraAnimLoopStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10000; } return val; }
	public @property final bool bEditorOnlyAddRefPoseToAdditiveAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20000) != 0; }
	public @property final bool bEditorOnlyAddRefPoseToAdditiveAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20000; } return val; }
	public @property final auto ref float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float PreviousTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref int AnimLinkupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float NotifyWeightThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptName SynchGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float SynchPosOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	// WARNING: Property 'CameraAnim' has the same name as a defined type!
	public @property final auto ref CameraAnimInst ActiveCameraAnimInstance() { return *cast(CameraAnimInst*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float CameraAnimScale() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float CameraAnimPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float CameraAnimBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float CameraAnimBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref AnimNodeSequence.ERootBoneAxis RootBoneOption() { return *cast(AnimNodeSequence.ERootBoneAxis*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref AnimNodeSequence.ERootRotationOption RootRotationOption() { return *cast(AnimNodeSequence.ERootRotationOption*)(cast(size_t)cast(void*)this + 303); }
	public @property final auto ref ScriptArray!(SkelControlBase) MetaDataSkelControlList() { return *cast(ScriptArray!(SkelControlBase)*)(cast(size_t)cast(void*)this + 308); }
	final void SetAnim(ScriptName Sequence)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Sequence;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10909], params.ptr, cast(void*)0);
	}
	final void PlayAnim(bool bLoop, float InRate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = InRate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10911], params.ptr, cast(void*)0);
	}
	final void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10915], cast(void*)0, cast(void*)0);
	}
	final void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10916], cast(void*)0, cast(void*)0);
	}
	final void SetPosition(float NewTime, bool bFireNotifies)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewTime;
		*cast(bool*)&params[4] = bFireNotifies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10917], params.ptr, cast(void*)0);
	}
	final float GetNormalizedPosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10920], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float FindGroupRelativePosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10922], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float FindGroupPosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10925], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float GetGroupRelativePosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10928], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetGlobalPlayRate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10930], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetAnimPlaybackLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10932], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetTimeLeft()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10934], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SetRootBoneAxisOption(AnimNodeSequence.ERootBoneAxis AxisX, AnimNodeSequence.ERootBoneAxis AxisY, AnimNodeSequence.ERootBoneAxis AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootBoneAxis*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10936], params.ptr, cast(void*)0);
	}
	final void SetRootBoneRotationOption(AnimNodeSequence.ERootRotationOption AxisX, AnimNodeSequence.ERootRotationOption AxisY, AnimNodeSequence.ERootRotationOption AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootRotationOption*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10941], params.ptr, cast(void*)0);
	}
}

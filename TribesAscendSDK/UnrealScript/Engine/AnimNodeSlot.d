module UnrealScript.Engine.AnimNodeSlot;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeSynch;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeSlot : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeSlot")); }
	private static __gshared AnimNodeSlot mDefaultProperties;
	@property final static AnimNodeSlot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeSlot)("AnimNodeSlot Engine.Default__AnimNodeSlot")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayCustomAnim;
			ScriptFunction mPlayCustomAnimByDuration;
			ScriptFunction mGetPlayedAnimation;
			ScriptFunction mStopCustomAnim;
			ScriptFunction mSetCustomAnim;
			ScriptFunction mSetActorAnimEndNotification;
			ScriptFunction mGetCustomAnimNodeSeq;
			ScriptFunction mSetRootBoneAxisOption;
			ScriptFunction mSetRootBoneRotationOption;
			ScriptFunction mAddToSynchGroup;
		}
		public @property static final
		{
			ScriptFunction PlayCustomAnim() { return mPlayCustomAnim ? mPlayCustomAnim : (mPlayCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.PlayCustomAnim")); }
			ScriptFunction PlayCustomAnimByDuration() { return mPlayCustomAnimByDuration ? mPlayCustomAnimByDuration : (mPlayCustomAnimByDuration = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.PlayCustomAnimByDuration")); }
			ScriptFunction GetPlayedAnimation() { return mGetPlayedAnimation ? mGetPlayedAnimation : (mGetPlayedAnimation = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.GetPlayedAnimation")); }
			ScriptFunction StopCustomAnim() { return mStopCustomAnim ? mStopCustomAnim : (mStopCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.StopCustomAnim")); }
			ScriptFunction SetCustomAnim() { return mSetCustomAnim ? mSetCustomAnim : (mSetCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.SetCustomAnim")); }
			ScriptFunction SetActorAnimEndNotification() { return mSetActorAnimEndNotification ? mSetActorAnimEndNotification : (mSetActorAnimEndNotification = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.SetActorAnimEndNotification")); }
			ScriptFunction GetCustomAnimNodeSeq() { return mGetCustomAnimNodeSeq ? mGetCustomAnimNodeSeq : (mGetCustomAnimNodeSeq = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.GetCustomAnimNodeSeq")); }
			ScriptFunction SetRootBoneAxisOption() { return mSetRootBoneAxisOption ? mSetRootBoneAxisOption : (mSetRootBoneAxisOption = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.SetRootBoneAxisOption")); }
			ScriptFunction SetRootBoneRotationOption() { return mSetRootBoneRotationOption ? mSetRootBoneRotationOption : (mSetRootBoneRotationOption = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.SetRootBoneRotationOption")); }
			ScriptFunction AddToSynchGroup() { return mAddToSynchGroup ? mAddToSynchGroup : (mAddToSynchGroup = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeSlot.AddToSynchGroup")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(float) TargetWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 260); }
			AnimNodeSynch SynchNode() { return *cast(AnimNodeSynch*)(cast(size_t)cast(void*)this + 276); }
			float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			int TargetChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
			int CustomChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			float PendingBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bAdditiveAnimationsOverrideSource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x8) != 0; }
		bool bAdditiveAnimationsOverrideSource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x8; } return val; }
		bool bSkipBlendWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x4) != 0; }
		bool bSkipBlendWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x4; } return val; }
		bool bEarlyAnimEndNotify() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
		bool bEarlyAnimEndNotify(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
		bool bIsPlayingCustomAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bIsPlayingCustomAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
final:
	float PlayCustomAnim(ScriptName AnimName, float Rate, float BlendInTime, float BlendOutTime, bool bLooping, bool bOverride, float StartTime, float EndTime)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Rate;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLooping;
		*cast(bool*)&params[24] = bOverride;
		*cast(float*)&params[28] = StartTime;
		*cast(float*)&params[32] = EndTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnim, params.ptr, cast(void*)0);
		return *cast(float*)&params[36];
	}
	bool PlayCustomAnimByDuration(ScriptName AnimName, float Duration, float BlendInTime, float BlendOutTime, bool bLooping, bool bOverride)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Duration;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLooping;
		*cast(bool*)&params[24] = bOverride;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnimByDuration, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	ScriptName GetPlayedAnimation()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayedAnimation, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void StopCustomAnim(float BlendOutTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = BlendOutTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopCustomAnim, params.ptr, cast(void*)0);
	}
	void SetCustomAnim(ScriptName AnimName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCustomAnim, params.ptr, cast(void*)0);
	}
	void SetActorAnimEndNotification(bool bNewStatus)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActorAnimEndNotification, params.ptr, cast(void*)0);
	}
	AnimNodeSequence GetCustomAnimNodeSeq()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCustomAnimNodeSeq, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
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
	void AddToSynchGroup(ScriptName GroupName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToSynchGroup, params.ptr, cast(void*)0);
	}
}

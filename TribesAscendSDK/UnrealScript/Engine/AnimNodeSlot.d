module UnrealScript.Engine.AnimNodeSlot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeSynch;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeSlot : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeSlot")); }
	private static __gshared AnimNodeSlot mDefaultProperties;
	@property final static AnimNodeSlot DefaultProperties() { mixin(MGDPC("AnimNodeSlot", "AnimNodeSlot Engine.Default__AnimNodeSlot")); }
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
			ScriptFunction PlayCustomAnim() { mixin(MGF("mPlayCustomAnim", "Function Engine.AnimNodeSlot.PlayCustomAnim")); }
			ScriptFunction PlayCustomAnimByDuration() { mixin(MGF("mPlayCustomAnimByDuration", "Function Engine.AnimNodeSlot.PlayCustomAnimByDuration")); }
			ScriptFunction GetPlayedAnimation() { mixin(MGF("mGetPlayedAnimation", "Function Engine.AnimNodeSlot.GetPlayedAnimation")); }
			ScriptFunction StopCustomAnim() { mixin(MGF("mStopCustomAnim", "Function Engine.AnimNodeSlot.StopCustomAnim")); }
			ScriptFunction SetCustomAnim() { mixin(MGF("mSetCustomAnim", "Function Engine.AnimNodeSlot.SetCustomAnim")); }
			ScriptFunction SetActorAnimEndNotification() { mixin(MGF("mSetActorAnimEndNotification", "Function Engine.AnimNodeSlot.SetActorAnimEndNotification")); }
			ScriptFunction GetCustomAnimNodeSeq() { mixin(MGF("mGetCustomAnimNodeSeq", "Function Engine.AnimNodeSlot.GetCustomAnimNodeSeq")); }
			ScriptFunction SetRootBoneAxisOption() { mixin(MGF("mSetRootBoneAxisOption", "Function Engine.AnimNodeSlot.SetRootBoneAxisOption")); }
			ScriptFunction SetRootBoneRotationOption() { mixin(MGF("mSetRootBoneRotationOption", "Function Engine.AnimNodeSlot.SetRootBoneRotationOption")); }
			ScriptFunction AddToSynchGroup() { mixin(MGF("mAddToSynchGroup", "Function Engine.AnimNodeSlot.AddToSynchGroup")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(float) TargetWeight() { mixin(MGPC("ScriptArray!(float)", 260)); }
			AnimNodeSynch SynchNode() { mixin(MGPC("AnimNodeSynch", 276)); }
			float BlendTimeToGo() { mixin(MGPC("float", 272)); }
			int TargetChildIndex() { mixin(MGPC("int", 256)); }
			int CustomChildIndex() { mixin(MGPC("int", 252)); }
			float PendingBlendOutTime() { mixin(MGPC("float", 248)); }
		}
		bool bAdditiveAnimationsOverrideSource() { mixin(MGBPC(244, 0x8)); }
		bool bAdditiveAnimationsOverrideSource(bool val) { mixin(MSBPC(244, 0x8)); }
		bool bSkipBlendWhenNotRendered() { mixin(MGBPC(244, 0x4)); }
		bool bSkipBlendWhenNotRendered(bool val) { mixin(MSBPC(244, 0x4)); }
		bool bEarlyAnimEndNotify() { mixin(MGBPC(244, 0x2)); }
		bool bEarlyAnimEndNotify(bool val) { mixin(MSBPC(244, 0x2)); }
		bool bIsPlayingCustomAnim() { mixin(MGBPC(244, 0x1)); }
		bool bIsPlayingCustomAnim(bool val) { mixin(MSBPC(244, 0x1)); }
	}
final:
	float PlayCustomAnim(ScriptName AnimName, float Rate, float* BlendInTime = null, float* BlendOutTime = null, bool* bLooping = null, bool* bOverride = null, float* StartTime = null, float* EndTime = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Rate;
		if (BlendInTime !is null)
			*cast(float*)&params[12] = *BlendInTime;
		if (BlendOutTime !is null)
			*cast(float*)&params[16] = *BlendOutTime;
		if (bLooping !is null)
			*cast(bool*)&params[20] = *bLooping;
		if (bOverride !is null)
			*cast(bool*)&params[24] = *bOverride;
		if (StartTime !is null)
			*cast(float*)&params[28] = *StartTime;
		if (EndTime !is null)
			*cast(float*)&params[32] = *EndTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnim, params.ptr, cast(void*)0);
		return *cast(float*)&params[36];
	}
	bool PlayCustomAnimByDuration(ScriptName AnimName, float Duration, float* BlendInTime = null, float* BlendOutTime = null, bool* bLooping = null, bool* bOverride = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Duration;
		if (BlendInTime !is null)
			*cast(float*)&params[12] = *BlendInTime;
		if (BlendOutTime !is null)
			*cast(float*)&params[16] = *BlendOutTime;
		if (bLooping !is null)
			*cast(bool*)&params[20] = *bLooping;
		if (bOverride !is null)
			*cast(bool*)&params[24] = *bOverride;
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
	void SetRootBoneAxisOption(AnimNodeSequence.ERootBoneAxis* AxisX = null, AnimNodeSequence.ERootBoneAxis* AxisY = null, AnimNodeSequence.ERootBoneAxis* AxisZ = null)
	{
		ubyte params[3];
		params[] = 0;
		if (AxisX !is null)
			*cast(AnimNodeSequence.ERootBoneAxis*)params.ptr = *AxisX;
		if (AxisY !is null)
			*cast(AnimNodeSequence.ERootBoneAxis*)&params[1] = *AxisY;
		if (AxisZ !is null)
			*cast(AnimNodeSequence.ERootBoneAxis*)&params[2] = *AxisZ;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRootBoneAxisOption, params.ptr, cast(void*)0);
	}
	void SetRootBoneRotationOption(AnimNodeSequence.ERootRotationOption* AxisX = null, AnimNodeSequence.ERootRotationOption* AxisY = null, AnimNodeSequence.ERootRotationOption* AxisZ = null)
	{
		ubyte params[3];
		params[] = 0;
		if (AxisX !is null)
			*cast(AnimNodeSequence.ERootRotationOption*)params.ptr = *AxisX;
		if (AxisY !is null)
			*cast(AnimNodeSequence.ERootRotationOption*)&params[1] = *AxisY;
		if (AxisZ !is null)
			*cast(AnimNodeSequence.ERootRotationOption*)&params[2] = *AxisZ;
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

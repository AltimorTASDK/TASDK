module UnrealScript.Engine.AnimNodePlayCustomAnim;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodePlayCustomAnim : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodePlayCustomAnim")); }
	private static __gshared AnimNodePlayCustomAnim mDefaultProperties;
	@property final static AnimNodePlayCustomAnim DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodePlayCustomAnim)("AnimNodePlayCustomAnim Engine.Default__AnimNodePlayCustomAnim")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayCustomAnim;
			ScriptFunction mPlayCustomAnimByDuration;
			ScriptFunction mStopCustomAnim;
			ScriptFunction mSetCustomAnim;
			ScriptFunction mSetActorAnimEndNotification;
			ScriptFunction mGetCustomAnimNodeSeq;
			ScriptFunction mSetRootBoneAxisOption;
		}
		public @property static final
		{
			ScriptFunction PlayCustomAnim() { return mPlayCustomAnim ? mPlayCustomAnim : (mPlayCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.PlayCustomAnim")); }
			ScriptFunction PlayCustomAnimByDuration() { return mPlayCustomAnimByDuration ? mPlayCustomAnimByDuration : (mPlayCustomAnimByDuration = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.PlayCustomAnimByDuration")); }
			ScriptFunction StopCustomAnim() { return mStopCustomAnim ? mStopCustomAnim : (mStopCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.StopCustomAnim")); }
			ScriptFunction SetCustomAnim() { return mSetCustomAnim ? mSetCustomAnim : (mSetCustomAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.SetCustomAnim")); }
			ScriptFunction SetActorAnimEndNotification() { return mSetActorAnimEndNotification ? mSetActorAnimEndNotification : (mSetActorAnimEndNotification = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.SetActorAnimEndNotification")); }
			ScriptFunction GetCustomAnimNodeSeq() { return mGetCustomAnimNodeSeq ? mGetCustomAnimNodeSeq : (mGetCustomAnimNodeSeq = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.GetCustomAnimNodeSeq")); }
			ScriptFunction SetRootBoneAxisOption() { return mSetRootBoneAxisOption ? mSetRootBoneAxisOption : (mSetRootBoneAxisOption = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodePlayCustomAnim.SetRootBoneAxisOption")); }
		}
	}
	@property final
	{
		@property final auto ref float CustomPendingBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		bool bIsPlayingCustomAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bIsPlayingCustomAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
final:
	float PlayCustomAnim(ScriptName AnimName, float Rate, float BlendInTime, float BlendOutTime, bool bLooping, bool bOverride)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Rate;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLooping;
		*cast(bool*)&params[24] = bOverride;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnim, params.ptr, cast(void*)0);
		return *cast(float*)&params[28];
	}
	void PlayCustomAnimByDuration(ScriptName AnimName, float Duration, float BlendInTime, float BlendOutTime, bool bLooping, bool bOverride)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		*cast(float*)&params[8] = Duration;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLooping;
		*cast(bool*)&params[24] = bOverride;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCustomAnimByDuration, params.ptr, cast(void*)0);
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
}

module UnrealScript.Engine.AnimNodePlayCustomAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodePlayCustomAnim : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodePlayCustomAnim")()); }
	private static __gshared AnimNodePlayCustomAnim mDefaultProperties;
	@property final static AnimNodePlayCustomAnim DefaultProperties() { mixin(MGDPC!(AnimNodePlayCustomAnim, "AnimNodePlayCustomAnim Engine.Default__AnimNodePlayCustomAnim")()); }
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
			ScriptFunction PlayCustomAnim() { mixin(MGF!("mPlayCustomAnim", "Function Engine.AnimNodePlayCustomAnim.PlayCustomAnim")()); }
			ScriptFunction PlayCustomAnimByDuration() { mixin(MGF!("mPlayCustomAnimByDuration", "Function Engine.AnimNodePlayCustomAnim.PlayCustomAnimByDuration")()); }
			ScriptFunction StopCustomAnim() { mixin(MGF!("mStopCustomAnim", "Function Engine.AnimNodePlayCustomAnim.StopCustomAnim")()); }
			ScriptFunction SetCustomAnim() { mixin(MGF!("mSetCustomAnim", "Function Engine.AnimNodePlayCustomAnim.SetCustomAnim")()); }
			ScriptFunction SetActorAnimEndNotification() { mixin(MGF!("mSetActorAnimEndNotification", "Function Engine.AnimNodePlayCustomAnim.SetActorAnimEndNotification")()); }
			ScriptFunction GetCustomAnimNodeSeq() { mixin(MGF!("mGetCustomAnimNodeSeq", "Function Engine.AnimNodePlayCustomAnim.GetCustomAnimNodeSeq")()); }
			ScriptFunction SetRootBoneAxisOption() { mixin(MGF!("mSetRootBoneAxisOption", "Function Engine.AnimNodePlayCustomAnim.SetRootBoneAxisOption")()); }
		}
	}
	@property final
	{
		@property final auto ref float CustomPendingBlendOutTime() { mixin(MGPC!(float, 264)()); }
		bool bIsPlayingCustomAnim() { mixin(MGBPC!(260, 0x1)()); }
		bool bIsPlayingCustomAnim(bool val) { mixin(MSBPC!(260, 0x1)()); }
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

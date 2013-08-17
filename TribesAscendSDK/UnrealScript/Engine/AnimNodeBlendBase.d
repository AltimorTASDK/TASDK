module UnrealScript.Engine.AnimNodeBlendBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface AnimNodeBlendBase : AnimNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendBase")()); }
	private static __gshared AnimNodeBlendBase mDefaultProperties;
	@property final static AnimNodeBlendBase DefaultProperties() { mixin(MGDPC!(AnimNodeBlendBase, "AnimNodeBlendBase Engine.Default__AnimNodeBlendBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayAnim;
			ScriptFunction mStopAnim;
			ScriptFunction mReplayAnim;
		}
		public @property static final
		{
			ScriptFunction PlayAnim() { mixin(MGF!("mPlayAnim", "Function Engine.AnimNodeBlendBase.PlayAnim")()); }
			ScriptFunction StopAnim() { mixin(MGF!("mStopAnim", "Function Engine.AnimNodeBlendBase.StopAnim")()); }
			ScriptFunction ReplayAnim() { mixin(MGF!("mReplayAnim", "Function Engine.AnimNodeBlendBase.ReplayAnim")()); }
		}
	}
	struct AnimBlendChild
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeBlendBase.AnimBlendChild")()); }
		@property final
		{
			auto ref
			{
				AnimNode Anim() { mixin(MGPS!("AnimNode", 8)()); }
				int DrawY() { mixin(MGPS!("int", 24)()); }
				float BlendWeight() { mixin(MGPS!("float", 16)()); }
				float Weight() { mixin(MGPS!("float", 12)()); }
				ScriptName Name() { mixin(MGPS!("ScriptName", 0)()); }
			}
			bool bIsAdditive() { mixin(MGBPS!(20, 0x2)()); }
			bool bIsAdditive(bool val) { mixin(MSBPS!(20, 0x2)()); }
			bool bMirrorSkeleton() { mixin(MGBPS!(20, 0x1)()); }
			bool bMirrorSkeleton(bool val) { mixin(MSBPS!(20, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeBlendBase.AnimBlendChild) Children() { mixin(MGPC!("ScriptArray!(AnimNodeBlendBase.AnimBlendChild)", 224)()); }
			UObject.AlphaBlendType BlendType() { mixin(MGPC!("UObject.AlphaBlendType", 240)()); }
		}
		bool bFixNumChildren() { mixin(MGBPC!(236, 0x1)()); }
		bool bFixNumChildren(bool val) { mixin(MSBPC!(236, 0x1)()); }
	}
final:
	void PlayAnim(bool* bLoop = null, float* Rate = null, float* StartTime = null)
	{
		ubyte params[12];
		params[] = 0;
		if (bLoop !is null)
			*cast(bool*)params.ptr = *bLoop;
		if (Rate !is null)
			*cast(float*)&params[4] = *Rate;
		if (StartTime !is null)
			*cast(float*)&params[8] = *StartTime;
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
}

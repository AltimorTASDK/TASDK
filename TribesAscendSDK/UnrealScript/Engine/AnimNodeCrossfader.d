module UnrealScript.Engine.AnimNodeCrossfader;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeCrossfader : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeCrossfader")()); }
	private static __gshared AnimNodeCrossfader mDefaultProperties;
	@property final static AnimNodeCrossfader DefaultProperties() { mixin(MGDPC!(AnimNodeCrossfader, "AnimNodeCrossfader Engine.Default__AnimNodeCrossfader")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayOneShotAnim;
			ScriptFunction mBlendToLoopingAnim;
			ScriptFunction mGetAnimName;
			ScriptFunction mGetActiveChild;
		}
		public @property static final
		{
			ScriptFunction PlayOneShotAnim() { mixin(MGF!("mPlayOneShotAnim", "Function Engine.AnimNodeCrossfader.PlayOneShotAnim")()); }
			ScriptFunction BlendToLoopingAnim() { mixin(MGF!("mBlendToLoopingAnim", "Function Engine.AnimNodeCrossfader.BlendToLoopingAnim")()); }
			ScriptFunction GetAnimName() { mixin(MGF!("mGetAnimName", "Function Engine.AnimNodeCrossfader.GetAnimName")()); }
			ScriptFunction GetActiveChild() { mixin(MGF!("mGetActiveChild", "Function Engine.AnimNodeCrossfader.GetActiveChild")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float PendingBlendOutTimeOneShot() { mixin(MGPC!(float, 272)()); }
			ScriptName DefaultAnimSeqName() { mixin(MGPC!(ScriptName, 260)()); }
		}
		bool bDontBlendOutOneShot() { mixin(MGBPC!(268, 0x1)()); }
		bool bDontBlendOutOneShot(bool val) { mixin(MSBPC!(268, 0x1)()); }
	}
final:
	void PlayOneShotAnim(ScriptName AnimSeqName, float BlendInTime, float BlendOutTime, bool bDontBlendOut, float Rate)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = BlendInTime;
		*cast(float*)&params[12] = BlendOutTime;
		*cast(bool*)&params[16] = bDontBlendOut;
		*cast(float*)&params[20] = Rate;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOneShotAnim, params.ptr, cast(void*)0);
	}
	void BlendToLoopingAnim(ScriptName AnimSeqName, float BlendInTime, float Rate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = BlendInTime;
		*cast(float*)&params[12] = Rate;
		(cast(ScriptObject)this).ProcessEvent(Functions.BlendToLoopingAnim, params.ptr, cast(void*)0);
	}
	ScriptName GetAnimName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAnimName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	AnimNodeSequence GetActiveChild()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActiveChild, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)params.ptr;
	}
}

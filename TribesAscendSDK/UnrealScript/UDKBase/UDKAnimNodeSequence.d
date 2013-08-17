module UnrealScript.UDKBase.UDKAnimNodeSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface UDKAnimNodeSequence : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimNodeSequence")()); }
	private static __gshared UDKAnimNodeSequence mDefaultProperties;
	@property final static UDKAnimNodeSequence DefaultProperties() { mixin(MGDPC!(UDKAnimNodeSequence, "UDKAnimNodeSequence UDKBase.Default__UDKAnimNodeSequence")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayAnimation;
			ScriptFunction mPlayAnimationSet;
			ScriptFunction mOnInit;
		}
		public @property static final
		{
			ScriptFunction PlayAnimation() { mixin(MGF!("mPlayAnimation", "Function UDKBase.UDKAnimNodeSequence.PlayAnimation")()); }
			ScriptFunction PlayAnimationSet() { mixin(MGF!("mPlayAnimationSet", "Function UDKBase.UDKAnimNodeSequence.PlayAnimationSet")()); }
			ScriptFunction OnInit() { mixin(MGF!("mOnInit", "Function UDKBase.UDKAnimNodeSequence.OnInit")()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(ScriptName) SeqStack() { mixin(MGPC!("ScriptArray!(ScriptName)", 324)()); }
		bool bLoopLastSequence() { mixin(MGBPC!(320, 0x2)()); }
		bool bLoopLastSequence(bool val) { mixin(MSBPC!(320, 0x2)()); }
		bool bAutoStart() { mixin(MGBPC!(320, 0x1)()); }
		bool bAutoStart(bool val) { mixin(MSBPC!(320, 0x1)()); }
	}
final:
	void PlayAnimation(ScriptName pSequence, float SeqRate, bool bSeqLoop)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		*cast(float*)&params[8] = SeqRate;
		*cast(bool*)&params[12] = bSeqLoop;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnimation, params.ptr, cast(void*)0);
	}
	void PlayAnimationSet(ScriptArray!(ScriptName) Sequences, float SeqRate, bool bLoopLast)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = Sequences;
		*cast(float*)&params[12] = SeqRate;
		*cast(bool*)&params[16] = bLoopLast;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnimationSet, params.ptr, cast(void*)0);
	}
	void OnInit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInit, cast(void*)0, cast(void*)0);
	}
}

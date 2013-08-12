module UnrealScript.UDKBase.UDKAnimNodeSequence;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface UDKAnimNodeSequence : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimNodeSequence")); }
	private static __gshared UDKAnimNodeSequence mDefaultProperties;
	@property final static UDKAnimNodeSequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimNodeSequence)("UDKAnimNodeSequence UDKBase.Default__UDKAnimNodeSequence")); }
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
			ScriptFunction PlayAnimation() { return mPlayAnimation ? mPlayAnimation : (mPlayAnimation = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeSequence.PlayAnimation")); }
			ScriptFunction PlayAnimationSet() { return mPlayAnimationSet ? mPlayAnimationSet : (mPlayAnimationSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeSequence.PlayAnimationSet")); }
			ScriptFunction OnInit() { return mOnInit ? mOnInit : (mOnInit = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeSequence.OnInit")); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(ScriptName) SeqStack() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 324); }
		bool bLoopLastSequence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
		bool bLoopLastSequence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
		bool bAutoStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
		bool bAutoStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
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

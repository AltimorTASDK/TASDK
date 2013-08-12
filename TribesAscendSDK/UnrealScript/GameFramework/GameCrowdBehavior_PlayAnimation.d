module UnrealScript.GameFramework.GameCrowdBehavior_PlayAnimation;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_PlayAnimation : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdBehavior_PlayAnimation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitBehavior;
			ScriptFunction mFinishedTargetRotation;
			ScriptFunction mSetSequenceOutput;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mPlayAgentAnimationNow;
			ScriptFunction mStopBehavior;
			ScriptFunction mGetBehaviorString;
		}
		public @property static final
		{
			ScriptFunction InitBehavior() { return mInitBehavior ? mInitBehavior : (mInitBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.InitBehavior")); }
			ScriptFunction FinishedTargetRotation() { return mFinishedTargetRotation ? mFinishedTargetRotation : (mFinishedTargetRotation = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.FinishedTargetRotation")); }
			ScriptFunction SetSequenceOutput() { return mSetSequenceOutput ? mSetSequenceOutput : (mSetSequenceOutput = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.SetSequenceOutput")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.OnAnimEnd")); }
			ScriptFunction PlayAgentAnimationNow() { return mPlayAgentAnimationNow ? mPlayAgentAnimationNow : (mPlayAgentAnimationNow = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.PlayAgentAnimationNow")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.StopBehavior")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_PlayAnimation.GetBehaviorString")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) AnimationList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 84); }
			int AnimationIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			// WARNING: Property 'AnimSequence' has the same name as a defined type!
			float LoopTime() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			int LoopIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			Actor CustomActionTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 108); }
			float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
		}
		bool bBlendBetweenAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x8) != 0; }
		bool bBlendBetweenAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x8; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x4) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x4; } return val; }
		bool bLookAtPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bLookAtPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bUseRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bUseRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
final:
	void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitBehavior, params.ptr, cast(void*)0);
	}
	void FinishedTargetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishedTargetRotation, cast(void*)0, cast(void*)0);
	}
	void SetSequenceOutput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSequenceOutput, cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void PlayAgentAnimationNow()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAgentAnimationNow, cast(void*)0, cast(void*)0);
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBehaviorString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}

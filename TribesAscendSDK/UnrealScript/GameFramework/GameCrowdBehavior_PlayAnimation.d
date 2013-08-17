module UnrealScript.GameFramework.GameCrowdBehavior_PlayAnimation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.GameFramework.SeqAct_PlayAgentAnimation;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_PlayAnimation : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdBehavior_PlayAnimation")()); }
	private static __gshared GameCrowdBehavior_PlayAnimation mDefaultProperties;
	@property final static GameCrowdBehavior_PlayAnimation DefaultProperties() { mixin(MGDPC!(GameCrowdBehavior_PlayAnimation, "GameCrowdBehavior_PlayAnimation GameFramework.Default__GameCrowdBehavior_PlayAnimation")()); }
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
			ScriptFunction InitBehavior() { mixin(MGF!("mInitBehavior", "Function GameFramework.GameCrowdBehavior_PlayAnimation.InitBehavior")()); }
			ScriptFunction FinishedTargetRotation() { mixin(MGF!("mFinishedTargetRotation", "Function GameFramework.GameCrowdBehavior_PlayAnimation.FinishedTargetRotation")()); }
			ScriptFunction SetSequenceOutput() { mixin(MGF!("mSetSequenceOutput", "Function GameFramework.GameCrowdBehavior_PlayAnimation.SetSequenceOutput")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function GameFramework.GameCrowdBehavior_PlayAnimation.OnAnimEnd")()); }
			ScriptFunction PlayAgentAnimationNow() { mixin(MGF!("mPlayAgentAnimationNow", "Function GameFramework.GameCrowdBehavior_PlayAnimation.PlayAgentAnimationNow")()); }
			ScriptFunction StopBehavior() { mixin(MGF!("mStopBehavior", "Function GameFramework.GameCrowdBehavior_PlayAnimation.StopBehavior")()); }
			ScriptFunction GetBehaviorString() { mixin(MGF!("mGetBehaviorString", "Function GameFramework.GameCrowdBehavior_PlayAnimation.GetBehaviorString")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) AnimationList() { mixin(MGPC!(ScriptArray!(ScriptName), 84)()); }
			int AnimationIndex() { mixin(MGPC!(int, 124)()); }
			// WARNING: Property 'AnimSequence' has the same name as a defined type!
			float LoopTime() { mixin(MGPC!(float, 116)()); }
			int LoopIndex() { mixin(MGPC!(int, 112)()); }
			Actor CustomActionTarget() { mixin(MGPC!(Actor, 108)()); }
			float BlendOutTime() { mixin(MGPC!(float, 100)()); }
			float BlendInTime() { mixin(MGPC!(float, 96)()); }
		}
		bool bBlendBetweenAnims() { mixin(MGBPC!(104, 0x8)()); }
		bool bBlendBetweenAnims(bool val) { mixin(MSBPC!(104, 0x8)()); }
		bool bLooping() { mixin(MGBPC!(104, 0x4)()); }
		bool bLooping(bool val) { mixin(MSBPC!(104, 0x4)()); }
		bool bLookAtPlayer() { mixin(MGBPC!(104, 0x2)()); }
		bool bLookAtPlayer(bool val) { mixin(MSBPC!(104, 0x2)()); }
		bool bUseRootMotion() { mixin(MGBPC!(104, 0x1)()); }
		bool bUseRootMotion(bool val) { mixin(MSBPC!(104, 0x1)()); }
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

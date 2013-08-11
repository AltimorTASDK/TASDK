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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31233], params.ptr, cast(void*)0);
	}
	void FinishedTargetRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31240], cast(void*)0, cast(void*)0);
	}
	void SetSequenceOutput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31241], cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31242], params.ptr, cast(void*)0);
	}
	void PlayAgentAnimationNow()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31246], cast(void*)0, cast(void*)0);
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31250], cast(void*)0, cast(void*)0);
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31251], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}

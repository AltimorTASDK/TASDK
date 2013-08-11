module UnrealScript.Engine.SeqAct_Delay;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_Delay : SeqAct_Latent
{
public extern(D):
	@property final
	{
		auto ref
		{
			float RemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float DefaultDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		}
		bool bStartWillRestart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bStartWillRestart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bDelayActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bDelayActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
final:
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25662], cast(void*)0, cast(void*)0);
	}
	void ResetDelayActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25663], cast(void*)0, cast(void*)0);
	}
}

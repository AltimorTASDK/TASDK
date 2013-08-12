module UnrealScript.Engine.SeqAct_DelaySwitch;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_DelaySwitch : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_DelaySwitch")); }
	@property final auto ref
	{
		float NextLinkTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float SwitchDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		int CurrentIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
		int LinkCount() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
	}
}

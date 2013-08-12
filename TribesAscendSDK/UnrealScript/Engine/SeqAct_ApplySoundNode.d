module UnrealScript.Engine.SeqAct_ApplySoundNode;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ApplySoundNode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ApplySoundNode")); }
	@property final auto ref
	{
		SoundNode ApplyNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 236); }
		SoundCue PlaySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 232); }
	}
}

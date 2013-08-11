module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface TrAnimNodeTurnInPlace_Player : AnimNodeSequence
{
public extern(D):
	struct TIP_Transition
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName TransName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition) TIP_Transitions() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition)*)(cast(size_t)cast(void*)this + 320); }
}

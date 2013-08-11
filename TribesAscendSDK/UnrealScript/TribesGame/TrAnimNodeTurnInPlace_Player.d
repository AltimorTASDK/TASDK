module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface TrAnimNodeTurnInPlace_Player : AnimNodeSequence
{
	struct TIP_Transition
	{
		public @property final auto ref ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __AnimName[8];
		public @property final auto ref ScriptName TransName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __TransName[8];
	}
	public @property final auto ref ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition) TIP_Transitions() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition)*)(cast(size_t)cast(void*)this + 320); }
}

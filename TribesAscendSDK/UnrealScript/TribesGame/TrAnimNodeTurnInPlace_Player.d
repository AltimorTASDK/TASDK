module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface TrAnimNodeTurnInPlace_Player : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeTurnInPlace_Player")()); }
	private static __gshared TrAnimNodeTurnInPlace_Player mDefaultProperties;
	@property final static TrAnimNodeTurnInPlace_Player DefaultProperties() { mixin(MGDPC!(TrAnimNodeTurnInPlace_Player, "TrAnimNodeTurnInPlace_Player TribesGame.Default__TrAnimNodeTurnInPlace_Player")()); }
	struct TIP_Transition
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrAnimNodeTurnInPlace_Player.TIP_Transition")()); }
		@property final auto ref
		{
			ScriptName AnimName() { mixin(MGPS!(ScriptName, 8)()); }
			ScriptName TransName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition) TIP_Transitions() { mixin(MGPC!(ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition), 320)()); }
}

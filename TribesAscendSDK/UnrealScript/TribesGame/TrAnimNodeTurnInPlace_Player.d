module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface TrAnimNodeTurnInPlace_Player : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeTurnInPlace_Player")); }
	private static __gshared TrAnimNodeTurnInPlace_Player mDefaultProperties;
	@property final static TrAnimNodeTurnInPlace_Player DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeTurnInPlace_Player)("TrAnimNodeTurnInPlace_Player TribesGame.Default__TrAnimNodeTurnInPlace_Player")); }
	struct TIP_Transition
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrAnimNodeTurnInPlace_Player.TIP_Transition")); }
		@property final auto ref
		{
			ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName TransName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition) TIP_Transitions() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace_Player.TIP_Transition)*)(cast(size_t)cast(void*)this + 320); }
}

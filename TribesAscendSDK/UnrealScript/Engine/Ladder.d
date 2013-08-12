module UnrealScript.Engine.Ladder;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LadderVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface Ladder : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Ladder")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSuggestMovePreparation;
		public @property static final ScriptFunction SuggestMovePreparation() { return mSuggestMovePreparation ? mSuggestMovePreparation : (mSuggestMovePreparation = ScriptObject.Find!(ScriptFunction)("Function Engine.Ladder.SuggestMovePreparation")); }
	}
	@property final auto ref
	{
		Ladder LadderList() { return *cast(Ladder*)(cast(size_t)cast(void*)this + 696); }
		LadderVolume MyLadder() { return *cast(LadderVolume*)(cast(size_t)cast(void*)this + 692); }
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

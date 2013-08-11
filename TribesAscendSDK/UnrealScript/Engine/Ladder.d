module UnrealScript.Engine.Ladder;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LadderVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface Ladder : NavigationPoint
{
	public @property final auto ref Ladder LadderList() { return *cast(Ladder*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref LadderVolume MyLadder() { return *cast(LadderVolume*)(cast(size_t)cast(void*)this + 692); }
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11893], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

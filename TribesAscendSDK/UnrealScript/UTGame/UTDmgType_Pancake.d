module UnrealScript.UTGame.UTDmgType_Pancake;

import ScriptClasses;
import UnrealScript.UTGame.UTDmgType_RanOver;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTDmgType_Pancake : UTDmgType_RanOver
{
	final void SmallReward(UTPlayerController Killer, int KillCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Killer;
		*cast(int*)&params[4] = KillCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47115], params.ptr, cast(void*)0);
	}
}

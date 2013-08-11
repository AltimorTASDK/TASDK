module UnrealScript.UTGame.UTSayMsg;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface UTSayMsg : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		UObject.Color BlueTeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 104); }
		UObject.Color RedTeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 100); }
	}
	final UObject.Color GetConsoleColor(PlayerReplicationInfo RelatedPRI_1)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RelatedPRI_1;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49007], params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
}

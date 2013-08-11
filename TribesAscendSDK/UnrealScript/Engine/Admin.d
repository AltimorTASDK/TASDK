module UnrealScript.Engine.Admin;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Admin : PlayerController
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9627], cast(void*)0, cast(void*)0);
	}
	// WARNING: Function 'Admin' has the same name as a defined type!
	final void ServerAdmin(ScriptString CommandLine)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = CommandLine;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9630], params.ptr, cast(void*)0);
	}
	final void KickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9633], params.ptr, cast(void*)0);
	}
	final void ServerKickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9635], params.ptr, cast(void*)0);
	}
	final void Kick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9637], params.ptr, cast(void*)0);
	}
	final void ServerKick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9639], params.ptr, cast(void*)0);
	}
	final void PlayerList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9641], cast(void*)0, cast(void*)0);
	}
	final void RestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9643], cast(void*)0, cast(void*)0);
	}
	final void ServerRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9644], cast(void*)0, cast(void*)0);
	}
	final void Switch(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9645], params.ptr, cast(void*)0);
	}
	final void ServerSwitch(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9647], params.ptr, cast(void*)0);
	}
}

module UnrealScript.TribesGame.TrChatConsoleCommands;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrChatConsoleCommands : UObject
{
	final void ChatConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74377], params.ptr, cast(void*)0);
	}
	final void ReportPlayer(ScriptString PlayerName, ScriptString Reason)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74379], params.ptr, cast(void*)0);
	}
	final void Say(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74382], params.ptr, cast(void*)0);
	}
	final void TeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74384], params.ptr, cast(void*)0);
	}
	final void Mute(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74386], params.ptr, cast(void*)0);
	}
	final void Unmute(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74388], params.ptr, cast(void*)0);
	}
	final void Votekick(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74390], params.ptr, cast(void*)0);
	}
	final void Report(ScriptString PlayerName, ScriptString Reason)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74392], params.ptr, cast(void*)0);
	}
	final void Tell(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74395], params.ptr, cast(void*)0);
	}
	final void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74398], cast(void*)0, cast(void*)0);
	}
	final void Quit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74399], cast(void*)0, cast(void*)0);
	}
	final void GiveCredits(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74400], params.ptr, cast(void*)0);
	}
	final void SC(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74402], params.ptr, cast(void*)0);
	}
	final void SendCtrlRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74404], params.ptr, cast(void*)0);
	}
	final void SendGameRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74406], params.ptr, cast(void*)0);
	}
	final void SpecList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74408], cast(void*)0, cast(void*)0);
	}
}

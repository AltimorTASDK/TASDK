module UnrealScript.TribesGame.TrChatConsole;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.UTGame.UTConsole;
import UnrealScript.Engine.Console;

extern(C++) interface TrChatConsole : UTConsole
{
	public @property final auto ref ScriptArray!(Console.AutoCompleteCommand) TribesAutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 468); }
	public @property final auto ref TrPlayerController m_TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref float m_fTypingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref ScriptString EscHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptString TabHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref ScriptString TellHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptString SlashHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref int LastFriendCount() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref ScriptString ChannelStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 456); }
	final void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74294], cast(void*)0, cast(void*)0);
	}
	final void GetPlayerController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74295], cast(void*)0, cast(void*)0);
	}
	final void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74297], params.ptr, cast(void*)0);
	}
	final void StartTypingChat(ScriptString Text, bool bFullConsole, ScriptString startText)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = bFullConsole;
		*cast(ScriptString*)&params[16] = startText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74300], params.ptr, cast(void*)0);
	}
	final void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74304], params.ptr, cast(void*)0);
	}
	final bool IsSlashCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74306], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPlayerTell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74308], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostRender_Console(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74310], params.ptr, cast(void*)0);
	}
	final bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[25];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74312], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void AddOnlineFriendHelp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74319], cast(void*)0, cast(void*)0);
	}
}

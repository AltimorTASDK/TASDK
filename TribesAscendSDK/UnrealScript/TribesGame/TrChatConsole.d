module UnrealScript.TribesGame.TrChatConsole;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.UTGame.UTConsole;
import UnrealScript.Engine.Console;

extern(C++) interface TrChatConsole : UTConsole
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrChatConsole")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialized;
			ScriptFunction mGetPlayerController;
			ScriptFunction mConsoleCommand;
			ScriptFunction mStartTypingChat;
			ScriptFunction mStartTyping;
			ScriptFunction mIsSlashCommand;
			ScriptFunction mIsPlayerTell;
			ScriptFunction mPostRender_Console;
			ScriptFunction mInputKey;
			ScriptFunction mAddOnlineFriendHelp;
		}
		public @property static final
		{
			ScriptFunction Initialized() { return mInitialized ? mInitialized : (mInitialized = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.Initialized")); }
			ScriptFunction GetPlayerController() { return mGetPlayerController ? mGetPlayerController : (mGetPlayerController = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.GetPlayerController")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.ConsoleCommand")); }
			ScriptFunction StartTypingChat() { return mStartTypingChat ? mStartTypingChat : (mStartTypingChat = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.StartTypingChat")); }
			ScriptFunction StartTyping() { return mStartTyping ? mStartTyping : (mStartTyping = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.StartTyping")); }
			ScriptFunction IsSlashCommand() { return mIsSlashCommand ? mIsSlashCommand : (mIsSlashCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.IsSlashCommand")); }
			ScriptFunction IsPlayerTell() { return mIsPlayerTell ? mIsPlayerTell : (mIsPlayerTell = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.IsPlayerTell")); }
			ScriptFunction PostRender_Console() { return mPostRender_Console ? mPostRender_Console : (mPostRender_Console = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.PostRender_Console")); }
			ScriptFunction InputKey() { return mInputKey ? mInputKey : (mInputKey = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.InputKey")); }
			ScriptFunction AddOnlineFriendHelp() { return mAddOnlineFriendHelp ? mAddOnlineFriendHelp : (mAddOnlineFriendHelp = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsole.AddOnlineFriendHelp")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Console.AutoCompleteCommand) TribesAutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 468); }
		TrPlayerController m_TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 536); }
		float m_fTypingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
		ScriptString EscHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 520); }
		ScriptString TabHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
		ScriptString TellHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 496); }
		ScriptString SlashHelp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 484); }
		int LastFriendCount() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
		ScriptString ChannelStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 456); }
	}
final:
	void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialized, cast(void*)0, cast(void*)0);
	}
	void GetPlayerController()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerController, cast(void*)0, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
	}
	void StartTypingChat(ScriptString Text, bool bFullConsole, ScriptString startText)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = bFullConsole;
		*cast(ScriptString*)&params[16] = startText;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTypingChat, params.ptr, cast(void*)0);
	}
	void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTyping, params.ptr, cast(void*)0);
	}
	bool IsSlashCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSlashCommand, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsPlayerTell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerTell, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostRender_Console(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender_Console, params.ptr, cast(void*)0);
	}
	bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.InputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void AddOnlineFriendHelp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOnlineFriendHelp, cast(void*)0, cast(void*)0);
	}
}

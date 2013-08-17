module UnrealScript.TribesGame.TrChatConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.UTGame.UTConsole;
import UnrealScript.Engine.Console;

extern(C++) interface TrChatConsole : UTConsole
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrChatConsole")()); }
	private static __gshared TrChatConsole mDefaultProperties;
	@property final static TrChatConsole DefaultProperties() { mixin(MGDPC!(TrChatConsole, "TrChatConsole TribesGame.Default__TrChatConsole")()); }
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
			ScriptFunction Initialized() { mixin(MGF!("mInitialized", "Function TribesGame.TrChatConsole.Initialized")()); }
			ScriptFunction GetPlayerController() { mixin(MGF!("mGetPlayerController", "Function TribesGame.TrChatConsole.GetPlayerController")()); }
			ScriptFunction ConsoleCommand() { mixin(MGF!("mConsoleCommand", "Function TribesGame.TrChatConsole.ConsoleCommand")()); }
			ScriptFunction StartTypingChat() { mixin(MGF!("mStartTypingChat", "Function TribesGame.TrChatConsole.StartTypingChat")()); }
			ScriptFunction StartTyping() { mixin(MGF!("mStartTyping", "Function TribesGame.TrChatConsole.StartTyping")()); }
			ScriptFunction IsSlashCommand() { mixin(MGF!("mIsSlashCommand", "Function TribesGame.TrChatConsole.IsSlashCommand")()); }
			ScriptFunction IsPlayerTell() { mixin(MGF!("mIsPlayerTell", "Function TribesGame.TrChatConsole.IsPlayerTell")()); }
			ScriptFunction PostRender_Console() { mixin(MGF!("mPostRender_Console", "Function TribesGame.TrChatConsole.PostRender_Console")()); }
			ScriptFunction InputKey() { mixin(MGF!("mInputKey", "Function TribesGame.TrChatConsole.InputKey")()); }
			ScriptFunction AddOnlineFriendHelp() { mixin(MGF!("mAddOnlineFriendHelp", "Function TribesGame.TrChatConsole.AddOnlineFriendHelp")()); }
		}
	}
	static struct Open
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrChatConsole.Open")()); }
	}
	static struct Typing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrChatConsole.Typing")()); }
	}
	@property final auto ref
	{
		ScriptArray!(Console.AutoCompleteCommand) TribesAutoCompleteList() { mixin(MGPC!("ScriptArray!(Console.AutoCompleteCommand)", 468)()); }
		TrPlayerController m_TrPC() { mixin(MGPC!("TrPlayerController", 536)()); }
		float m_fTypingTime() { mixin(MGPC!("float", 532)()); }
		ScriptString EscHelp() { mixin(MGPC!("ScriptString", 520)()); }
		ScriptString TabHelp() { mixin(MGPC!("ScriptString", 508)()); }
		ScriptString TellHelp() { mixin(MGPC!("ScriptString", 496)()); }
		ScriptString SlashHelp() { mixin(MGPC!("ScriptString", 484)()); }
		int LastFriendCount() { mixin(MGPC!("int", 480)()); }
		ScriptString ChannelStr() { mixin(MGPC!("ScriptString", 456)()); }
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
	void StartTypingChat(ScriptString Text, bool* bFullConsole = null, ScriptString* startText = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (bFullConsole !is null)
			*cast(bool*)&params[12] = *bFullConsole;
		if (startText !is null)
			*cast(ScriptString*)&params[16] = *startText;
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
	bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float* AmountDepressed = null, bool* bGamepad = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		if (AmountDepressed !is null)
			*cast(float*)&params[16] = *AmountDepressed;
		if (bGamepad !is null)
			*cast(bool*)&params[20] = *bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.InputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void AddOnlineFriendHelp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOnlineFriendHelp, cast(void*)0, cast(void*)0);
	}
}

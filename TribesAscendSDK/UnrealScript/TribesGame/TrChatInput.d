module UnrealScript.TribesGame.TrChatInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TrChatInput : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrChatInput")()); }
	private static __gshared TrChatInput mDefaultProperties;
	@property final static TrChatInput DefaultProperties() { mixin(MGDPC!(TrChatInput, "TrChatInput TribesGame.Default__TrChatInput")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialized;
			ScriptFunction mSetInputText;
			ScriptFunction mSetCursorPos;
			ScriptFunction mConsoleCommand;
			ScriptFunction mStartTyping;
			ScriptFunction mPostRender_Console;
			ScriptFunction mInputKey;
			ScriptFunction mInputChar;
			ScriptFunction mFlushPlayerInput;
			ScriptFunction mProcessControlKey;
			ScriptFunction mAppendInputText;
		}
		public @property static final
		{
			ScriptFunction Initialized() { mixin(MGF!("mInitialized", "Function TribesGame.TrChatInput.Initialized")()); }
			ScriptFunction SetInputText() { mixin(MGF!("mSetInputText", "Function TribesGame.TrChatInput.SetInputText")()); }
			ScriptFunction SetCursorPos() { mixin(MGF!("mSetCursorPos", "Function TribesGame.TrChatInput.SetCursorPos")()); }
			ScriptFunction ConsoleCommand() { mixin(MGF!("mConsoleCommand", "Function TribesGame.TrChatInput.ConsoleCommand")()); }
			ScriptFunction StartTyping() { mixin(MGF!("mStartTyping", "Function TribesGame.TrChatInput.StartTyping")()); }
			ScriptFunction PostRender_Console() { mixin(MGF!("mPostRender_Console", "Function TribesGame.TrChatInput.PostRender_Console")()); }
			ScriptFunction InputKey() { mixin(MGF!("mInputKey", "Function TribesGame.TrChatInput.InputKey")()); }
			ScriptFunction InputChar() { mixin(MGF!("mInputChar", "Function TribesGame.TrChatInput.InputChar")()); }
			ScriptFunction FlushPlayerInput() { mixin(MGF!("mFlushPlayerInput", "Function TribesGame.TrChatInput.FlushPlayerInput")()); }
			ScriptFunction ProcessControlKey() { mixin(MGF!("mProcessControlKey", "Function TribesGame.TrChatInput.ProcessControlKey")()); }
			ScriptFunction AppendInputText() { mixin(MGF!("mAppendInputText", "Function TribesGame.TrChatInput.AppendInputText")()); }
		}
	}
	static struct Typing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrChatInput.Typing")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptString ChannelStr() { mixin(MGPC!(ScriptString, 136)()); }
			int TypedStrPos() { mixin(MGPC!(int, 132)()); }
			ScriptString TypedStr() { mixin(MGPC!(ScriptString, 120)()); }
			Texture2D DefaultTexture_White() { mixin(MGPC!(Texture2D, 116)()); }
			Texture2D DefaultTexture_Black() { mixin(MGPC!(Texture2D, 112)()); }
			LocalPlayer ConsoleTargetPlayer() { mixin(MGPC!(LocalPlayer, 108)()); }
		}
		bool bEnableUI() { mixin(MGBPC!(148, 0x4)()); }
		bool bEnableUI(bool val) { mixin(MSBPC!(148, 0x4)()); }
		bool bCtrl() { mixin(MGBPC!(148, 0x2)()); }
		bool bCtrl(bool val) { mixin(MSBPC!(148, 0x2)()); }
		bool bCaptureKeyInput() { mixin(MGBPC!(148, 0x1)()); }
		bool bCaptureKeyInput(bool val) { mixin(MSBPC!(148, 0x1)()); }
	}
final:
	void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialized, cast(void*)0, cast(void*)0);
	}
	void SetInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInputText, params.ptr, cast(void*)0);
	}
	void SetCursorPos(int Position)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Position;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCursorPos, params.ptr, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
	}
	void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTyping, params.ptr, cast(void*)0);
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
	bool InputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(Functions.InputChar, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void FlushPlayerInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushPlayerInput, cast(void*)0, cast(void*)0);
	}
	bool ProcessControlKey(ScriptName Key, UObject.EInputEvent Event)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessControlKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AppendInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendInputText, params.ptr, cast(void*)0);
	}
}

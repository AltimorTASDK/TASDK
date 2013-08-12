module UnrealScript.TribesGame.TrChatInput;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TrChatInput : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrChatInput")); }
	private static __gshared TrChatInput mDefaultProperties;
	@property final static TrChatInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrChatInput)("TrChatInput TribesGame.Default__TrChatInput")); }
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
			ScriptFunction Initialized() { return mInitialized ? mInitialized : (mInitialized = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.Initialized")); }
			ScriptFunction SetInputText() { return mSetInputText ? mSetInputText : (mSetInputText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.SetInputText")); }
			ScriptFunction SetCursorPos() { return mSetCursorPos ? mSetCursorPos : (mSetCursorPos = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.SetCursorPos")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.ConsoleCommand")); }
			ScriptFunction StartTyping() { return mStartTyping ? mStartTyping : (mStartTyping = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.StartTyping")); }
			ScriptFunction PostRender_Console() { return mPostRender_Console ? mPostRender_Console : (mPostRender_Console = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.PostRender_Console")); }
			ScriptFunction InputKey() { return mInputKey ? mInputKey : (mInputKey = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.InputKey")); }
			ScriptFunction InputChar() { return mInputChar ? mInputChar : (mInputChar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.InputChar")); }
			ScriptFunction FlushPlayerInput() { return mFlushPlayerInput ? mFlushPlayerInput : (mFlushPlayerInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.FlushPlayerInput")); }
			ScriptFunction ProcessControlKey() { return mProcessControlKey ? mProcessControlKey : (mProcessControlKey = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.ProcessControlKey")); }
			ScriptFunction AppendInputText() { return mAppendInputText ? mAppendInputText : (mAppendInputText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatInput.AppendInputText")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString ChannelStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			int TypedStrPos() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			ScriptString TypedStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
			Texture2D DefaultTexture_White() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 116); }
			Texture2D DefaultTexture_Black() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 112); }
			LocalPlayer ConsoleTargetPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bEnableUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x4) != 0; }
		bool bEnableUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x4; } return val; }
		bool bCtrl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x2) != 0; }
		bool bCtrl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x2; } return val; }
		bool bCaptureKeyInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x1) != 0; }
		bool bCaptureKeyInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x1; } return val; }
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

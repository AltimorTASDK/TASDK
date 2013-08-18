module UnrealScript.Engine.Console;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Interaction;

extern(C++) interface Console : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Console")); }
	private static __gshared Console mDefaultProperties;
	@property final static Console DefaultProperties() { mixin(MGDPC("Console", "Console Engine.Default__Console")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialized;
			ScriptFunction mSetInputText;
			ScriptFunction mSetCursorPos;
			ScriptFunction mPurgeCommandFromHistory;
			ScriptFunction mConsoleCommand;
			ScriptFunction mClearOutput;
			ScriptFunction mOutputTextLine;
			ScriptFunction mOutputText;
			ScriptFunction mStartTyping;
			ScriptFunction mPostRender_Console;
			ScriptFunction mInputKey;
			ScriptFunction mInputChar;
			ScriptFunction mFlushPlayerInput;
			ScriptFunction mProcessControlKey;
			ScriptFunction mAppendInputText;
			ScriptFunction mBuildRuntimeAutoCompleteList;
			ScriptFunction mUpdateCompleteIndices;
		}
		public @property static final
		{
			ScriptFunction Initialized() { mixin(MGF("mInitialized", "Function Engine.Console.Initialized")); }
			ScriptFunction SetInputText() { mixin(MGF("mSetInputText", "Function Engine.Console.SetInputText")); }
			ScriptFunction SetCursorPos() { mixin(MGF("mSetCursorPos", "Function Engine.Console.SetCursorPos")); }
			ScriptFunction PurgeCommandFromHistory() { mixin(MGF("mPurgeCommandFromHistory", "Function Engine.Console.PurgeCommandFromHistory")); }
			ScriptFunction ConsoleCommand() { mixin(MGF("mConsoleCommand", "Function Engine.Console.ConsoleCommand")); }
			ScriptFunction ClearOutput() { mixin(MGF("mClearOutput", "Function Engine.Console.ClearOutput")); }
			ScriptFunction OutputTextLine() { mixin(MGF("mOutputTextLine", "Function Engine.Console.OutputTextLine")); }
			ScriptFunction OutputText() { mixin(MGF("mOutputText", "Function Engine.Console.OutputText")); }
			ScriptFunction StartTyping() { mixin(MGF("mStartTyping", "Function Engine.Console.StartTyping")); }
			ScriptFunction PostRender_Console() { mixin(MGF("mPostRender_Console", "Function Engine.Console.PostRender_Console")); }
			ScriptFunction InputKey() { mixin(MGF("mInputKey", "Function Engine.Console.InputKey")); }
			ScriptFunction InputChar() { mixin(MGF("mInputChar", "Function Engine.Console.InputChar")); }
			ScriptFunction FlushPlayerInput() { mixin(MGF("mFlushPlayerInput", "Function Engine.Console.FlushPlayerInput")); }
			ScriptFunction ProcessControlKey() { mixin(MGF("mProcessControlKey", "Function Engine.Console.ProcessControlKey")); }
			ScriptFunction AppendInputText() { mixin(MGF("mAppendInputText", "Function Engine.Console.AppendInputText")); }
			ScriptFunction BuildRuntimeAutoCompleteList() { mixin(MGF("mBuildRuntimeAutoCompleteList", "Function Engine.Console.BuildRuntimeAutoCompleteList")); }
			ScriptFunction UpdateCompleteIndices() { mixin(MGF("mUpdateCompleteIndices", "Function Engine.Console.UpdateCompleteIndices")); }
		}
	}
	static struct Constants
	{
		enum MaxHistory = 16;
	}
	struct scrollbackData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Console.scrollbackData")); }
		@property final auto ref
		{
			UObject.Color OverrideColor() { mixin(MGPS("UObject.Color", 12)); }
			ScriptString Text() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct AutoCompleteCommand
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Console.AutoCompleteCommand")); }
		@property final auto ref
		{
			ScriptString Desc() { mixin(MGPS("ScriptString", 12)); }
			ScriptString Command() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	struct AutoCompleteNode
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Console.AutoCompleteNode")); }
		@property final auto ref
		{
			ScriptArray!(int) AutoCompleteListIndices() { mixin(MGPS("ScriptArray!(int)", 4)); }
			ScriptArray!(Pointer) ChildNodes() { mixin(MGPS("ScriptArray!(Pointer)", 16)); }
			int IndexChar() { mixin(MGPS("int", 0)); }
		}
	}
	static struct Typing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.Console.Typing")); }
	}
	static struct Open
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.Console.Open")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Console.scrollbackData) Scrollback() { mixin(MGPC("ScriptArray!(Console.scrollbackData)", 140)); }
			ScriptArray!(Console.AutoCompleteCommand) ManualAutoCompleteList() { mixin(MGPC("ScriptArray!(Console.AutoCompleteCommand)", 384)); }
			ScriptArray!(Console.AutoCompleteCommand) AutoCompleteList() { mixin(MGPC("ScriptArray!(Console.AutoCompleteCommand)", 396)); }
			ScriptArray!(int) AutoCompleteIndices() { mixin(MGPC("ScriptArray!(int)", 440)); }
			Console.AutoCompleteNode AutoCompleteTree() { mixin(MGPC("Console.AutoCompleteNode", 412)); }
			int AutoCompleteIndex() { mixin(MGPC("int", 408)); }
			int TypedStrPos() { mixin(MGPC("int", 380)); }
			ScriptString TypedStr() { mixin(MGPC("ScriptString", 368)); }
			ScriptString History() { mixin(MGPC("ScriptString", 172)); }
			int HistoryCur() { mixin(MGPC("int", 168)); }
			int HistoryBot() { mixin(MGPC("int", 164)); }
			int HistoryTop() { mixin(MGPC("int", 160)); }
			int SBPos() { mixin(MGPC("int", 156)); }
			int SBHead() { mixin(MGPC("int", 152)); }
			int MaxScrollbackSize() { mixin(MGPC("int", 136)); }
			ScriptName TypeKey() { mixin(MGPC("ScriptName", 128)); }
			ScriptName ConsoleKey() { mixin(MGPC("ScriptName", 120)); }
			Texture2D DefaultTexture_White() { mixin(MGPC("Texture2D", 116)); }
			Texture2D DefaultTexture_Black() { mixin(MGPC("Texture2D", 112)); }
			LocalPlayer ConsoleTargetPlayer() { mixin(MGPC("LocalPlayer", 108)); }
		}
		bool bIsRuntimeAutoCompleteUpToDate() { mixin(MGBPC(364, 0x40)); }
		bool bIsRuntimeAutoCompleteUpToDate(bool val) { mixin(MSBPC(364, 0x40)); }
		bool bRequireCtrlToNavigateAutoComplete() { mixin(MGBPC(364, 0x20)); }
		bool bRequireCtrlToNavigateAutoComplete(bool val) { mixin(MSBPC(364, 0x20)); }
		bool bAutoCompleteLocked() { mixin(MGBPC(364, 0x10)); }
		bool bAutoCompleteLocked(bool val) { mixin(MSBPC(364, 0x10)); }
		bool bEnableUI() { mixin(MGBPC(364, 0x8)); }
		bool bEnableUI(bool val) { mixin(MSBPC(364, 0x8)); }
		bool bCtrl() { mixin(MGBPC(364, 0x4)); }
		bool bCtrl(bool val) { mixin(MSBPC(364, 0x4)); }
		bool bCaptureKeyInput() { mixin(MGBPC(364, 0x2)); }
		bool bCaptureKeyInput(bool val) { mixin(MSBPC(364, 0x2)); }
		bool bNavigatingHistory() { mixin(MGBPC(364, 0x1)); }
		bool bNavigatingHistory(bool val) { mixin(MSBPC(364, 0x1)); }
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
	void PurgeCommandFromHistory(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.PurgeCommandFromHistory, params.ptr, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
	}
	void ClearOutput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearOutput, cast(void*)0, cast(void*)0);
	}
	void OutputTextLine(ScriptString Text, UObject.Color* OverrideColor = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (OverrideColor !is null)
			*cast(UObject.Color*)&params[12] = *OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.OutputTextLine, params.ptr, cast(void*)0);
	}
	void OutputText(ScriptString Text, UObject.Color* OverrideColor = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (OverrideColor !is null)
			*cast(UObject.Color*)&params[12] = *OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.OutputText, params.ptr, cast(void*)0);
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
	void BuildRuntimeAutoCompleteList(bool* bForce = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bForce !is null)
			*cast(bool*)params.ptr = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildRuntimeAutoCompleteList, params.ptr, cast(void*)0);
	}
	void UpdateCompleteIndices()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCompleteIndices, cast(void*)0, cast(void*)0);
	}
}

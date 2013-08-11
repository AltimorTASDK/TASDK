module UnrealScript.Engine.Console;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Interaction;

extern(C++) interface Console : Interaction
{
	public static immutable auto MaxHistory = 16;
	struct scrollbackData
	{
		public @property final auto ref UObject.Color OverrideColor() { return *cast(UObject.Color*)(cast(size_t)&this + 12); }
		private ubyte __OverrideColor[4];
		public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Text[12];
	}
	struct AutoCompleteCommand
	{
		public @property final auto ref ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __Desc[12];
		public @property final auto ref ScriptString Command() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Command[12];
	}
	struct AutoCompleteNode
	{
		public @property final auto ref ScriptArray!(int) AutoCompleteListIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 4); }
		private ubyte __AutoCompleteListIndices[12];
		public @property final auto ref ScriptArray!(UObject.Pointer) ChildNodes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)&this + 16); }
		private ubyte __ChildNodes[12];
		public @property final auto ref int IndexChar() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __IndexChar[4];
	}
	public @property final auto ref ScriptArray!(Console.scrollbackData) Scrollback() { return *cast(ScriptArray!(Console.scrollbackData)*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptArray!(Console.AutoCompleteCommand) ManualAutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(Console.AutoCompleteCommand) AutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptArray!(int) AutoCompleteIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref Console.AutoCompleteNode AutoCompleteTree() { return *cast(Console.AutoCompleteNode*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref int AutoCompleteIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref int TypedStrPos() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptString TypedStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
	public @property final bool bIsRuntimeAutoCompleteUpToDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x40) != 0; }
	public @property final bool bIsRuntimeAutoCompleteUpToDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x40; } return val; }
	public @property final bool bRequireCtrlToNavigateAutoComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x20) != 0; }
	public @property final bool bRequireCtrlToNavigateAutoComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x20; } return val; }
	public @property final bool bAutoCompleteLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x10) != 0; }
	public @property final bool bAutoCompleteLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x10; } return val; }
	public @property final bool bEnableUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x8) != 0; }
	public @property final bool bEnableUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x8; } return val; }
	public @property final bool bCtrl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x4) != 0; }
	public @property final bool bCtrl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x4; } return val; }
	public @property final bool bCaptureKeyInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
	public @property final bool bCaptureKeyInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
	public @property final bool bNavigatingHistory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
	public @property final bool bNavigatingHistory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	public @property final auto ref ScriptString History() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int HistoryCur() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int HistoryBot() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int HistoryTop() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int SBPos() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int SBHead() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int MaxScrollbackSize() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptName TypeKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptName ConsoleKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref Texture2D DefaultTexture_White() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Texture2D DefaultTexture_Black() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref LocalPlayer ConsoleTargetPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 108); }
	final void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12982], cast(void*)0, cast(void*)0);
	}
	final void SetInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12983], params.ptr, cast(void*)0);
	}
	final void SetCursorPos(int Position)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Position;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12985], params.ptr, cast(void*)0);
	}
	final void PurgeCommandFromHistory(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12987], params.ptr, cast(void*)0);
	}
	final void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12992], params.ptr, cast(void*)0);
	}
	final void ClearOutput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12996], cast(void*)0, cast(void*)0);
	}
	final void OutputTextLine(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12997], params.ptr, cast(void*)0);
	}
	final void OutputText(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13001], params.ptr, cast(void*)0);
	}
	final void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13007], params.ptr, cast(void*)0);
	}
	final void PostRender_Console(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13009], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13011], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool InputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13018], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void FlushPlayerInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13022], cast(void*)0, cast(void*)0);
	}
	final bool ProcessControlKey(ScriptName Key, UObject.EInputEvent Event)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13024], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AppendInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13028], params.ptr, cast(void*)0);
	}
	final void BuildRuntimeAutoCompleteList(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13031], params.ptr, cast(void*)0);
	}
	final void UpdateCompleteIndices()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13033], cast(void*)0, cast(void*)0);
	}
}

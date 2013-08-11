module UnrealScript.Engine.Console;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Interaction;

extern(C++) interface Console : Interaction
{
public extern(D):
	enum MaxHistory = 16;
	struct scrollbackData
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			UObject.Color OverrideColor() { return *cast(UObject.Color*)(cast(size_t)&this + 12); }
			ScriptString Text() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct AutoCompleteCommand
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString Command() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct AutoCompleteNode
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(int) AutoCompleteListIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 4); }
			ScriptArray!(UObject.Pointer) ChildNodes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)&this + 16); }
			int IndexChar() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Console.scrollbackData) Scrollback() { return *cast(ScriptArray!(Console.scrollbackData)*)(cast(size_t)cast(void*)this + 140); }
			ScriptArray!(Console.AutoCompleteCommand) ManualAutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 384); }
			ScriptArray!(Console.AutoCompleteCommand) AutoCompleteList() { return *cast(ScriptArray!(Console.AutoCompleteCommand)*)(cast(size_t)cast(void*)this + 396); }
			ScriptArray!(int) AutoCompleteIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 440); }
			Console.AutoCompleteNode AutoCompleteTree() { return *cast(Console.AutoCompleteNode*)(cast(size_t)cast(void*)this + 412); }
			int AutoCompleteIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 408); }
			int TypedStrPos() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
			ScriptString TypedStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
			ScriptString History() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
			int HistoryCur() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int HistoryBot() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			int HistoryTop() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int SBPos() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int SBHead() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			int MaxScrollbackSize() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			ScriptName TypeKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
			ScriptName ConsoleKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 120); }
			Texture2D DefaultTexture_White() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 116); }
			Texture2D DefaultTexture_Black() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 112); }
			LocalPlayer ConsoleTargetPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bIsRuntimeAutoCompleteUpToDate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x40) != 0; }
		bool bIsRuntimeAutoCompleteUpToDate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x40; } return val; }
		bool bRequireCtrlToNavigateAutoComplete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x20) != 0; }
		bool bRequireCtrlToNavigateAutoComplete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x20; } return val; }
		bool bAutoCompleteLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x10) != 0; }
		bool bAutoCompleteLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x10; } return val; }
		bool bEnableUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x8) != 0; }
		bool bEnableUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x8; } return val; }
		bool bCtrl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x4) != 0; }
		bool bCtrl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x4; } return val; }
		bool bCaptureKeyInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
		bool bCaptureKeyInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
		bool bNavigatingHistory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
		bool bNavigatingHistory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	}
final:
	void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12982], cast(void*)0, cast(void*)0);
	}
	void SetInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12983], params.ptr, cast(void*)0);
	}
	void SetCursorPos(int Position)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Position;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12985], params.ptr, cast(void*)0);
	}
	void PurgeCommandFromHistory(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12987], params.ptr, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12992], params.ptr, cast(void*)0);
	}
	void ClearOutput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12996], cast(void*)0, cast(void*)0);
	}
	void OutputTextLine(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12997], params.ptr, cast(void*)0);
	}
	void OutputText(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13001], params.ptr, cast(void*)0);
	}
	void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13007], params.ptr, cast(void*)0);
	}
	void PostRender_Console(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13009], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13011], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool InputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13018], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void FlushPlayerInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13022], cast(void*)0, cast(void*)0);
	}
	bool ProcessControlKey(ScriptName Key, UObject.EInputEvent Event)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13024], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AppendInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13028], params.ptr, cast(void*)0);
	}
	void BuildRuntimeAutoCompleteList(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13031], params.ptr, cast(void*)0);
	}
	void UpdateCompleteIndices()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13033], cast(void*)0, cast(void*)0);
	}
}

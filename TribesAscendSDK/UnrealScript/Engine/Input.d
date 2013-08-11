module UnrealScript.Engine.Input;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface Input : Interaction
{
	struct KeyBind
	{
		public @property final bool bIgnoreAlt() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x20) != 0; }
		public @property final bool bIgnoreAlt(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x20; } return val; }
		private ubyte __bIgnoreAlt[4];
		public @property final bool bIgnoreShift() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x10) != 0; }
		public @property final bool bIgnoreShift(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x10; } return val; }
		private ubyte __bIgnoreShift[4];
		public @property final bool bIgnoreCtrl() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x8) != 0; }
		public @property final bool bIgnoreCtrl(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x8; } return val; }
		private ubyte __bIgnoreCtrl[4];
		public @property final bool Alt() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x4) != 0; }
		public @property final bool Alt(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x4; } return val; }
		private ubyte __Alt[4];
		public @property final bool Shift() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
		public @property final bool Shift(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
		private ubyte __Shift[4];
		public @property final bool Control() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool Control(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __Control[4];
		public @property final auto ref ScriptString Command() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __Command[12];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Name[8];
	}
	public @property final auto ref ScriptArray!(Input.KeyBind) Bindings() { return *cast(ScriptArray!(Input.KeyBind)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(ScriptName) PressedKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(UObject.Pointer) AxisArray() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float CurrentDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float CurrentDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref UObject.EInputEvent CurrentEvent() { return *cast(UObject.EInputEvent*)(cast(size_t)cast(void*)this + 132); }
	final void ResetInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13920], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetBind(ScriptName* Key)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = *Key;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13921], params.ptr, cast(void*)0);
		*Key = *cast(ScriptName*)params.ptr;
		return *cast(ScriptString*)&params[8];
	}
	final ScriptString GetBindNameFromCommandScript(ScriptString* KeyCommand)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *KeyCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13924], params.ptr, cast(void*)0);
		*KeyCommand = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
	final void SetBind(ScriptName* BindName, ScriptString Command)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = *BindName;
		*cast(ScriptString*)&params[8] = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13927], params.ptr, cast(void*)0);
		*BindName = *cast(ScriptName*)params.ptr;
	}
}

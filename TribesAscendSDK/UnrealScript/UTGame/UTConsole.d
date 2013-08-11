module UnrealScript.UTGame.UTConsole;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Console;

extern(C++) interface UTConsole : Console
{
public extern(D):
	@property final auto ref int TextCount() { return *cast(int*)(cast(size_t)cast(void*)this + 452); }
final:
	bool AnyBrowserOpen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44076], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44078], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void OutputTextLine(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44093], params.ptr, cast(void*)0);
	}
}

module UnrealScript.UTGame.UTConsole;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Console;

extern(C++) interface UTConsole : Console
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTConsole")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnyBrowserOpen;
			ScriptFunction mInputKey;
			ScriptFunction mOutputTextLine;
		}
		public @property static final
		{
			ScriptFunction AnyBrowserOpen() { return mAnyBrowserOpen ? mAnyBrowserOpen : (mAnyBrowserOpen = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsole.AnyBrowserOpen")); }
			ScriptFunction InputKey() { return mInputKey ? mInputKey : (mInputKey = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsole.InputKey")); }
			ScriptFunction OutputTextLine() { return mOutputTextLine ? mOutputTextLine : (mOutputTextLine = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsole.OutputTextLine")); }
		}
	}
	@property final auto ref int TextCount() { return *cast(int*)(cast(size_t)cast(void*)this + 452); }
final:
	bool AnyBrowserOpen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnyBrowserOpen, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.InputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void OutputTextLine(ScriptString Text, UObject.Color OverrideColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(UObject.Color*)&params[12] = OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.OutputTextLine, params.ptr, cast(void*)0);
	}
}

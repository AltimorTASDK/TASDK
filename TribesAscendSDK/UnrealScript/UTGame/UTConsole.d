module UnrealScript.UTGame.UTConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Console;

extern(C++) interface UTConsole : Console
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTConsole")()); }
	private static __gshared UTConsole mDefaultProperties;
	@property final static UTConsole DefaultProperties() { mixin(MGDPC!(UTConsole, "UTConsole UTGame.Default__UTConsole")()); }
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
			ScriptFunction AnyBrowserOpen() { mixin(MGF!("mAnyBrowserOpen", "Function UTGame.UTConsole.AnyBrowserOpen")()); }
			ScriptFunction InputKey() { mixin(MGF!("mInputKey", "Function UTGame.UTConsole.InputKey")()); }
			ScriptFunction OutputTextLine() { mixin(MGF!("mOutputTextLine", "Function UTGame.UTConsole.OutputTextLine")()); }
		}
	}
	static struct Typing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTConsole.Typing")()); }
	}
	@property final auto ref int TextCount() { mixin(MGPC!("int", 452)()); }
final:
	bool AnyBrowserOpen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnyBrowserOpen, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
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
	void OutputTextLine(ScriptString Text, UObject.Color* OverrideColor = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (OverrideColor !is null)
			*cast(UObject.Color*)&params[12] = *OverrideColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.OutputTextLine, params.ptr, cast(void*)0);
	}
}

module UnrealScript.Engine.DebugCameraInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Core.UObject;

extern(C++) interface DebugCameraInput : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DebugCameraInput")); }
	private static __gshared DebugCameraInput mDefaultProperties;
	@property final static DebugCameraInput DefaultProperties() { mixin(MGDPC("DebugCameraInput", "DebugCameraInput Engine.Default__DebugCameraInput")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInputKey;
		public @property static final ScriptFunction InputKey() { mixin(MGF("mInputKey", "Function Engine.DebugCameraInput.InputKey")); }
	}
	final bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float* AmountDepressed = null, bool* bGamepad = null)
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
}

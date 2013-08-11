module UnrealScript.Engine.DebugCameraInput;

import ScriptClasses;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Core.UObject;

extern(C++) interface DebugCameraInput : PlayerInput
{
public extern(D):
	final bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14027], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}

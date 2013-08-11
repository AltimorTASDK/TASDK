module UnrealScript.PlatformCommon.TgBrowserInteraction;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TgBrowserInteraction : Interaction
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_FCallbackEventDevice() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
}

module UnrealScript.Engine.Client;

import UnrealScript.Core.UObject;

extern(C++) interface Client : UObject
{
	public @property final auto ref float DisplayGamma() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float MinDesiredFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float InitialButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float ButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
}

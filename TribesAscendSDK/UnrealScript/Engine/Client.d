module UnrealScript.Engine.Client;

import UnrealScript.Core.UObject;

extern(C++) interface Client : UObject
{
public extern(D):
	@property final auto ref
	{
		float DisplayGamma() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
		float MinDesiredFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		float InitialButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		float ButtonRepeatDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	}
}

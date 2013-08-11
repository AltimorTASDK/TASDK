module UnrealScript.UDKBase.UDKProfileSettings;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineProfileSettings;

extern(C++) interface UDKProfileSettings : OnlineProfileSettings
{
public extern(D):
final:
	void ResetToDefault(int ProfileId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35286], params.ptr, cast(void*)0);
	}
	void ResetKeysToDefault(LocalPlayer InPlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35288], params.ptr, cast(void*)0);
	}
}

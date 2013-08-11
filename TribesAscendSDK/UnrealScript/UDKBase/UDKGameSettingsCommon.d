module UnrealScript.UDKBase.UDKGameSettingsCommon;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface UDKGameSettingsCommon : OnlineGameSettings
{
public extern(D):
final:
	bool StringToBlob(ScriptString* InString, ScriptString* OutBlob)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InString;
		*cast(ScriptString*)&params[12] = *OutBlob;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34897], params.ptr, cast(void*)0);
		*InString = *cast(ScriptString*)params.ptr;
		*OutBlob = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	ScriptString BlobToString(ScriptString* InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InBlob;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34901], params.ptr, cast(void*)0);
		*InBlob = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
}

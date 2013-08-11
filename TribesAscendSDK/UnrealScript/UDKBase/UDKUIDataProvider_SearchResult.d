module UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_SearchResult : UIDataProvider_Settings
{
public extern(D):
	@property final auto ref
	{
		ScriptString IconFontPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptName MapNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
		ScriptName ServerFlagsTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
		ScriptName GameModeFriendlyNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 152); }
		ScriptName PlayerRatioTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
	}
	final bool IsPrivateServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35582], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

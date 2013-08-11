module UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_SearchResult : UIDataProvider_Settings
{
	public @property final auto ref ScriptString IconFontPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptName MapNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptName ServerFlagsTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptName GameModeFriendlyNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptName PlayerRatioTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
	final bool IsPrivateServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35582], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

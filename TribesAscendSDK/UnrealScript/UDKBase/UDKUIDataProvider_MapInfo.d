module UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UDKUIDataProvider_MapInfo : UDKUIResourceDataProvider
{
	public @property final auto ref ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString NumPlayers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int MapId() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
}

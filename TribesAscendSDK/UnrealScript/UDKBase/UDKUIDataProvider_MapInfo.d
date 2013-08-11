module UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UDKUIDataProvider_MapInfo : UDKUIResourceDataProvider
{
public extern(D):
	@property final auto ref
	{
		ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString NumPlayers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		int MapId() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	}
}

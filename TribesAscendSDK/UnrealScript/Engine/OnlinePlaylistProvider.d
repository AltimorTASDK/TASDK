module UnrealScript.Engine.OnlinePlaylistProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistProvider : UIResourceDataProvider
{
	public @property final auto ref ScriptArray!(ScriptName) PlaylistGameTypeNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref int Priority() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final bool bIsArbitrated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
	public @property final bool bIsArbitrated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	public @property final auto ref ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int PlaylistId() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
}

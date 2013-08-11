module UnrealScript.Engine.OnlinePlaylistProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistProvider : UIResourceDataProvider
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) PlaylistGameTypeNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 128); }
			int Priority() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
			int PlaylistId() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bIsArbitrated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bIsArbitrated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
}

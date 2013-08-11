module UnrealScript.Engine.OnlinePlaylistGameTypeProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistGameTypeProvider : UIResourceDataProvider
{
	public @property final auto ref int GameTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptName PlaylistGameTypeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 124); }
}

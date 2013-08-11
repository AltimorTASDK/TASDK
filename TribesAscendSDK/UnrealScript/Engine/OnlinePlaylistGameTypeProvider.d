module UnrealScript.Engine.OnlinePlaylistGameTypeProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistGameTypeProvider : UIResourceDataProvider
{
public extern(D):
	@property final auto ref
	{
		int GameTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptName PlaylistGameTypeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 124); }
	}
}

module UnrealScript.Engine.OnlinePlaylistGameTypeProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistGameTypeProvider : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlinePlaylistGameTypeProvider")); }
	private static __gshared OnlinePlaylistGameTypeProvider mDefaultProperties;
	@property final static OnlinePlaylistGameTypeProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlinePlaylistGameTypeProvider)("OnlinePlaylistGameTypeProvider Engine.Default__OnlinePlaylistGameTypeProvider")); }
	@property final auto ref
	{
		int GameTypeId() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptName PlaylistGameTypeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 124); }
	}
}

module UnrealScript.UnrealEd.ThumbnailManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ThumbnailManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ThumbnailManager")); }
	private static __gshared ThumbnailManager mDefaultProperties;
	@property final static ThumbnailManager DefaultProperties() { mixin(MGDPC("ThumbnailManager", "ThumbnailManager UnrealEd.Default__ThumbnailManager")); }
}

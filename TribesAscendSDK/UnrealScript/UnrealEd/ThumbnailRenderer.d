module UnrealScript.UnrealEd.ThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ThumbnailRenderer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ThumbnailRenderer")); }
	private static __gshared ThumbnailRenderer mDefaultProperties;
	@property final static ThumbnailRenderer DefaultProperties() { mixin(MGDPC("ThumbnailRenderer", "ThumbnailRenderer UnrealEd.Default__ThumbnailRenderer")); }
}

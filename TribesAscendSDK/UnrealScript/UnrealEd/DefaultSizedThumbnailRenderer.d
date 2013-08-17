module UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface DefaultSizedThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.DefaultSizedThumbnailRenderer")); }
	private static __gshared DefaultSizedThumbnailRenderer mDefaultProperties;
	@property final static DefaultSizedThumbnailRenderer DefaultProperties() { mixin(MGDPC("DefaultSizedThumbnailRenderer", "DefaultSizedThumbnailRenderer UnrealEd.Default__DefaultSizedThumbnailRenderer")); }
}

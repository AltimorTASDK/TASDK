module UnrealScript.UnrealEd.MaterialInstanceThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface MaterialInstanceThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.MaterialInstanceThumbnailRenderer")); }
	private static __gshared MaterialInstanceThumbnailRenderer mDefaultProperties;
	@property final static MaterialInstanceThumbnailRenderer DefaultProperties() { mixin(MGDPC("MaterialInstanceThumbnailRenderer", "MaterialInstanceThumbnailRenderer UnrealEd.Default__MaterialInstanceThumbnailRenderer")); }
}

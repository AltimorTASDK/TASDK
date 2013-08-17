module UnrealScript.UnrealEd.IconThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface IconThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.IconThumbnailRenderer")()); }
	private static __gshared IconThumbnailRenderer mDefaultProperties;
	@property final static IconThumbnailRenderer DefaultProperties() { mixin(MGDPC!(IconThumbnailRenderer, "IconThumbnailRenderer UnrealEd.Default__IconThumbnailRenderer")()); }
}

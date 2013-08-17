module UnrealScript.UnrealEd.TextureCubeThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface TextureCubeThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TextureCubeThumbnailRenderer")()); }
	private static __gshared TextureCubeThumbnailRenderer mDefaultProperties;
	@property final static TextureCubeThumbnailRenderer DefaultProperties() { mixin(MGDPC!(TextureCubeThumbnailRenderer, "TextureCubeThumbnailRenderer UnrealEd.Default__TextureCubeThumbnailRenderer")()); }
}

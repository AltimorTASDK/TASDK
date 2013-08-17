module UnrealScript.UnrealEd.ArchetypeThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.IconThumbnailRenderer;

extern(C++) interface ArchetypeThumbnailRenderer : IconThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ArchetypeThumbnailRenderer")()); }
	private static __gshared ArchetypeThumbnailRenderer mDefaultProperties;
	@property final static ArchetypeThumbnailRenderer DefaultProperties() { mixin(MGDPC!(ArchetypeThumbnailRenderer, "ArchetypeThumbnailRenderer UnrealEd.Default__ArchetypeThumbnailRenderer")()); }
}

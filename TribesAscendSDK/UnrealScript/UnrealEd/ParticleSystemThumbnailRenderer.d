module UnrealScript.UnrealEd.ParticleSystemThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface ParticleSystemThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ParticleSystemThumbnailRenderer")); }
	private static __gshared ParticleSystemThumbnailRenderer mDefaultProperties;
	@property final static ParticleSystemThumbnailRenderer DefaultProperties() { mixin(MGDPC("ParticleSystemThumbnailRenderer", "ParticleSystemThumbnailRenderer UnrealEd.Default__ParticleSystemThumbnailRenderer")); }
}

module UnrealScript.UnrealEd.ParticleSystemThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface ParticleSystemThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ParticleSystemThumbnailRenderer")); }
	private static __gshared ParticleSystemThumbnailRenderer mDefaultProperties;
	@property final static ParticleSystemThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleSystemThumbnailRenderer)("ParticleSystemThumbnailRenderer UnrealEd.Default__ParticleSystemThumbnailRenderer")); }
}

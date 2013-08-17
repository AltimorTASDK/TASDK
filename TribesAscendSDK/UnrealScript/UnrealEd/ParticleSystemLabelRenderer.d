module UnrealScript.UnrealEd.ParticleSystemLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ParticleSystemLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ParticleSystemLabelRenderer")); }
	private static __gshared ParticleSystemLabelRenderer mDefaultProperties;
	@property final static ParticleSystemLabelRenderer DefaultProperties() { mixin(MGDPC("ParticleSystemLabelRenderer", "ParticleSystemLabelRenderer UnrealEd.Default__ParticleSystemLabelRenderer")); }
}

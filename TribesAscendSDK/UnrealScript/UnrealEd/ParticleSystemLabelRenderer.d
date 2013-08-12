module UnrealScript.UnrealEd.ParticleSystemLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface ParticleSystemLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ParticleSystemLabelRenderer")); }
	private static __gshared ParticleSystemLabelRenderer mDefaultProperties;
	@property final static ParticleSystemLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleSystemLabelRenderer)("ParticleSystemLabelRenderer UnrealEd.Default__ParticleSystemLabelRenderer")); }
}

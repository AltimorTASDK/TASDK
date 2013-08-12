module UnrealScript.UnrealEd.CascadeParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;

extern(C++) interface CascadeParticleSystemComponent : ParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CascadeParticleSystemComponent")); }
	private static __gshared CascadeParticleSystemComponent mDefaultProperties;
	@property final static CascadeParticleSystemComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CascadeParticleSystemComponent)("CascadeParticleSystemComponent UnrealEd.Default__CascadeParticleSystemComponent")); }
}

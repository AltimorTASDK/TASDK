module UnrealScript.UnrealEd.CascadeParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemComponent;

extern(C++) interface CascadeParticleSystemComponent : ParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.CascadeParticleSystemComponent")()); }
	private static __gshared CascadeParticleSystemComponent mDefaultProperties;
	@property final static CascadeParticleSystemComponent DefaultProperties() { mixin(MGDPC!(CascadeParticleSystemComponent, "CascadeParticleSystemComponent UnrealEd.Default__CascadeParticleSystemComponent")()); }
}

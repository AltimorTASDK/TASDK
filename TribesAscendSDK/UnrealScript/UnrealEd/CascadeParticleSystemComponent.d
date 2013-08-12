module UnrealScript.UnrealEd.CascadeParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;

extern(C++) interface CascadeParticleSystemComponent : ParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CascadeParticleSystemComponent")); }
}

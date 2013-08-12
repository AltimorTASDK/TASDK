module UnrealScript.UTGame.UTParticleSystemComponent;

import ScriptClasses;
import UnrealScript.UDKBase.UDKParticleSystemComponent;

extern(C++) interface UTParticleSystemComponent : UDKParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTParticleSystemComponent")); }
	private static __gshared UTParticleSystemComponent mDefaultProperties;
	@property final static UTParticleSystemComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTParticleSystemComponent)("UTParticleSystemComponent UTGame.Default__UTParticleSystemComponent")); }
}

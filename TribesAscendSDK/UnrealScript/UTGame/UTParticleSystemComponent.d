module UnrealScript.UTGame.UTParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKParticleSystemComponent;

extern(C++) interface UTParticleSystemComponent : UDKParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTParticleSystemComponent")); }
	private static __gshared UTParticleSystemComponent mDefaultProperties;
	@property final static UTParticleSystemComponent DefaultProperties() { mixin(MGDPC("UTParticleSystemComponent", "UTParticleSystemComponent UTGame.Default__UTParticleSystemComponent")); }
}

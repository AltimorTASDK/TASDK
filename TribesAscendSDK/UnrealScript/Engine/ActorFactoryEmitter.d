module UnrealScript.Engine.ActorFactoryEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface ActorFactoryEmitter : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryEmitter")); }
	private static __gshared ActorFactoryEmitter mDefaultProperties;
	@property final static ActorFactoryEmitter DefaultProperties() { mixin(MGDPC("ActorFactoryEmitter", "ActorFactoryEmitter Engine.Default__ActorFactoryEmitter")); }
	@property final auto ref ParticleSystem ParticleSystemVar() { mixin(MGPC("ParticleSystem", 92)); }
}

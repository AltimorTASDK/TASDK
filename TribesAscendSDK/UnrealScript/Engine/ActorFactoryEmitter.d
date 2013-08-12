module UnrealScript.Engine.ActorFactoryEmitter;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface ActorFactoryEmitter : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryEmitter")); }
	private static __gshared ActorFactoryEmitter mDefaultProperties;
	@property final static ActorFactoryEmitter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryEmitter)("ActorFactoryEmitter Engine.Default__ActorFactoryEmitter")); }
	// WARNING: Property 'ParticleSystem' has the same name as a defined type!
}

module UnrealScript.UTGame.UTActorFactoryUTKActor;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryRigidBody;

extern(C++) interface UTActorFactoryUTKActor : ActorFactoryRigidBody
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTActorFactoryUTKActor")); }
}

module UnrealScript.Engine.ActorFactoryActor;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryActor : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryActor")); }
	private static __gshared ActorFactoryActor mDefaultProperties;
	@property final static ActorFactoryActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryActor)("ActorFactoryActor Engine.Default__ActorFactoryActor")); }
	@property final auto ref ScriptClass ActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}

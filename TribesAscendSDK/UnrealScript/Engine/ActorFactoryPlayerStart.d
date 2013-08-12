module UnrealScript.Engine.ActorFactoryPlayerStart;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPlayerStart : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryPlayerStart")); }
	private static __gshared ActorFactoryPlayerStart mDefaultProperties;
	@property final static ActorFactoryPlayerStart DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryPlayerStart)("ActorFactoryPlayerStart Engine.Default__ActorFactoryPlayerStart")); }
}

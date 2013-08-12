module UnrealScript.Engine.ActorFactoryPathNode;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPathNode : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryPathNode")); }
	private static __gshared ActorFactoryPathNode mDefaultProperties;
	@property final static ActorFactoryPathNode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryPathNode)("ActorFactoryPathNode Engine.Default__ActorFactoryPathNode")); }
}

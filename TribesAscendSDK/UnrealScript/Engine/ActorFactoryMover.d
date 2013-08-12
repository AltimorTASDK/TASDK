module UnrealScript.Engine.ActorFactoryMover;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryDynamicSM;

extern(C++) interface ActorFactoryMover : ActorFactoryDynamicSM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryMover")); }
	private static __gshared ActorFactoryMover mDefaultProperties;
	@property final static ActorFactoryMover DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryMover)("ActorFactoryMover Engine.Default__ActorFactoryMover")); }
}

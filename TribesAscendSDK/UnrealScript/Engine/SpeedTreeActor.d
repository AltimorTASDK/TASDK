module UnrealScript.Engine.SpeedTreeActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface SpeedTreeActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeedTreeActor")); }
	private static __gshared SpeedTreeActor mDefaultProperties;
	@property final static SpeedTreeActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SpeedTreeActor)("SpeedTreeActor Engine.Default__SpeedTreeActor")); }
}

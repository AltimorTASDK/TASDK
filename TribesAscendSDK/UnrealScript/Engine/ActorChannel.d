module UnrealScript.Engine.ActorChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface ActorChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorChannel")); }
	private static __gshared ActorChannel mDefaultProperties;
	@property final static ActorChannel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorChannel)("ActorChannel Engine.Default__ActorChannel")); }
}

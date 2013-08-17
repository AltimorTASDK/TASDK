module UnrealScript.Engine.ActorChannel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Channel;

extern(C++) interface ActorChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorChannel")); }
	private static __gshared ActorChannel mDefaultProperties;
	@property final static ActorChannel DefaultProperties() { mixin(MGDPC("ActorChannel", "ActorChannel Engine.Default__ActorChannel")); }
}

module UnrealScript.Engine.ControlChannel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Channel;

extern(C++) interface ControlChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ControlChannel")); }
	private static __gshared ControlChannel mDefaultProperties;
	@property final static ControlChannel DefaultProperties() { mixin(MGDPC("ControlChannel", "ControlChannel Engine.Default__ControlChannel")); }
}

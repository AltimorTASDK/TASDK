module UnrealScript.Engine.Channel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Channel : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Channel")); }
	private static __gshared Channel mDefaultProperties;
	@property final static Channel DefaultProperties() { mixin(MGDPC("Channel", "Channel Engine.Default__Channel")); }
}

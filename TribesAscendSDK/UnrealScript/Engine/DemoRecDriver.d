module UnrealScript.Engine.DemoRecDriver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NetDriver;

extern(C++) interface DemoRecDriver : NetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DemoRecDriver")()); }
	private static __gshared DemoRecDriver mDefaultProperties;
	@property final static DemoRecDriver DefaultProperties() { mixin(MGDPC!(DemoRecDriver, "DemoRecDriver Engine.Default__DemoRecDriver")()); }
	@property final auto ref
	{
		ScriptString DemoSpectatorClass() { mixin(MGPC!("ScriptString", 444)()); }
		int MaxRewindPoints() { mixin(MGPC!("int", 580)()); }
		float RewindPointInterval() { mixin(MGPC!("float", 588)()); }
		int NumRecentRewindPoints() { mixin(MGPC!("int", 592)()); }
	}
}

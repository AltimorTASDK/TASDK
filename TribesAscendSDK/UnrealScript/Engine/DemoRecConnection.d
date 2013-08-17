module UnrealScript.Engine.DemoRecConnection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NetConnection;

extern(C++) interface DemoRecConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DemoRecConnection")()); }
	private static __gshared DemoRecConnection mDefaultProperties;
	@property final static DemoRecConnection DefaultProperties() { mixin(MGDPC!(DemoRecConnection, "DemoRecConnection Engine.Default__DemoRecConnection")()); }
}

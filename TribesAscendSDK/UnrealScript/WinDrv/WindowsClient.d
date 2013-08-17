module UnrealScript.WinDrv.WindowsClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Client;

extern(C++) interface WindowsClient : Client
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class WinDrv.WindowsClient")()); }
	private static __gshared WindowsClient mDefaultProperties;
	@property final static WindowsClient DefaultProperties() { mixin(MGDPC!(WindowsClient, "WindowsClient WinDrv.Default__WindowsClient")()); }
	@property final auto ref
	{
		ScriptClass AudioDeviceClass() { mixin(MGPC!(ScriptClass, 412)()); }
		int AllowJoystickInput() { mixin(MGPC!(int, 460)()); }
	}
}

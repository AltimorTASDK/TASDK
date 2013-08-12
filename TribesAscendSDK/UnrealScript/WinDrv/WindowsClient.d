module UnrealScript.WinDrv.WindowsClient;

import ScriptClasses;
import UnrealScript.Engine.Client;

extern(C++) interface WindowsClient : Client
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class WinDrv.WindowsClient")); }
	@property final auto ref
	{
		ScriptClass AudioDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 412); }
		int AllowJoystickInput() { return *cast(int*)(cast(size_t)cast(void*)this + 460); }
	}
}

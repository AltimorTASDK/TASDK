module UnrealScript.WinDrv.WindowsClient;

import ScriptClasses;
import UnrealScript.Engine.Client;

extern(C++) interface WindowsClient : Client
{
	public @property final auto ref ScriptClass AudioDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref int AllowJoystickInput() { return *cast(int*)(cast(size_t)cast(void*)this + 460); }
}

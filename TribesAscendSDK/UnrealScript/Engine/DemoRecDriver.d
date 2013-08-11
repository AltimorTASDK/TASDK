module UnrealScript.Engine.DemoRecDriver;

import ScriptClasses;
import UnrealScript.Engine.NetDriver;

extern(C++) interface DemoRecDriver : NetDriver
{
	public @property final auto ref ScriptString DemoSpectatorClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref int MaxRewindPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float RewindPointInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref int NumRecentRewindPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
}

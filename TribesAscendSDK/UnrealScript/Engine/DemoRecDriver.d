module UnrealScript.Engine.DemoRecDriver;

import ScriptClasses;
import UnrealScript.Engine.NetDriver;

extern(C++) interface DemoRecDriver : NetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DemoRecDriver")); }
	private static __gshared DemoRecDriver mDefaultProperties;
	@property final static DemoRecDriver DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DemoRecDriver)("DemoRecDriver Engine.Default__DemoRecDriver")); }
	@property final auto ref
	{
		ScriptString DemoSpectatorClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
		int MaxRewindPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 580); }
		float RewindPointInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 588); }
		int NumRecentRewindPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 592); }
	}
}

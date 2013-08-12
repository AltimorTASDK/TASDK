module UnrealScript.Engine.AISwitchablePylon;

import ScriptClasses;
import UnrealScript.Engine.Pylon;

extern(C++) interface AISwitchablePylon : Pylon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AISwitchablePylon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetEnabled;
			ScriptFunction mIsEnabled;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.AISwitchablePylon.PostBeginPlay")); }
			ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.AISwitchablePylon.SetEnabled")); }
			ScriptFunction IsEnabled() { return mIsEnabled ? mIsEnabled : (mIsEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.AISwitchablePylon.IsEnabled")); }
		}
	}
	@property final
	{
		bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 832) & 0x1) != 0; }
		bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 832) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 832) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

module UnrealScript.UTGame.UTPlayerInput;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPlayerInput;

extern(C++) interface UTPlayerInput : UDKPlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPlayerInput")); }
	private static __gshared UTPlayerInput mDefaultProperties;
	@property final static UTPlayerInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTPlayerInput)("UTPlayerInput UTGame.Default__UTPlayerInput")); }
	@property final
	{
		auto ref
		{
			Actor.EDoubleClickDir ForcedDoubleClick() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 996); }
			float LastDuckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
		}
		bool bHoldDuck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 992) & 0x1) != 0; }
		bool bHoldDuck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 992) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 992) &= ~0x1; } return val; }
	}
}

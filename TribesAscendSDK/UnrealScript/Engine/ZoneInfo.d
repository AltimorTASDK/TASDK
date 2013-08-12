module UnrealScript.Engine.ZoneInfo;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface ZoneInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ZoneInfo")); }
	@property final
	{
		auto ref
		{
			float KillZ() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			// WARNING: Property 'KillZDamageType' has the same name as a defined type!
			float SoftKill() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bSoftKillZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bSoftKillZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
}

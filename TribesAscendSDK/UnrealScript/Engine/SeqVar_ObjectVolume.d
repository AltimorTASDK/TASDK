module UnrealScript.Engine.SeqVar_ObjectVolume;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_ObjectVolume : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_ObjectVolume")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) ContainedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 180); }
			ScriptArray!(ScriptClass) ExcludeClassList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 192); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
		}
		bool bCollidingOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 204) & 0x1) != 0; }
		bool bCollidingOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 204) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 204) &= ~0x1; } return val; }
	}
}

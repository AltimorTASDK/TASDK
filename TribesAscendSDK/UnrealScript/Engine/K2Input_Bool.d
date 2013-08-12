module UnrealScript.Engine.K2Input_Bool;

import ScriptClasses;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_Bool : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Input_Bool")); }
	private static __gshared K2Input_Bool mDefaultProperties;
	@property final static K2Input_Bool DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Input_Bool)("K2Input_Bool Engine.Default__K2Input_Bool")); }
	@property final
	{
		bool bDefaultBool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bDefaultBool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}

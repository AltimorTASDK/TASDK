module UnrealScript.Core.Subsystem;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Subsystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Subsystem")); }
	private static __gshared Subsystem mDefaultProperties;
	@property final static Subsystem DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Subsystem)("Subsystem Core.Default__Subsystem")); }
	@property final auto ref UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}

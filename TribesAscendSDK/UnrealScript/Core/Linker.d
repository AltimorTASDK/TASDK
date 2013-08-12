module UnrealScript.Core.Linker;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Linker : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Linker")); }
	private static __gshared Linker mDefaultProperties;
	@property final static Linker DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Linker)("Linker Core.Default__Linker")); }
}

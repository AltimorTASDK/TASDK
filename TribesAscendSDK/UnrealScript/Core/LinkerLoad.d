module UnrealScript.Core.LinkerLoad;

import ScriptClasses;
import UnrealScript.Core.Linker;

extern(C++) interface LinkerLoad : Linker
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.LinkerLoad")); }
}

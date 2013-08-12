module UnrealScript.Core.ScriptStruct;

import ScriptClasses;
import UnrealScript.Core.Struct;

extern(C++) interface ScriptStruct : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ScriptStruct")); }
}

module UnrealScript.Core.State;

import ScriptClasses;
import UnrealScript.Core.Struct;

extern(C++) interface State : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.State")); }
}

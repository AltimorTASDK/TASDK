module UnrealScript.Engine.InterpGroupInstDirector;

import ScriptClasses;
import UnrealScript.Engine.InterpGroupInst;

extern(C++) interface InterpGroupInstDirector : InterpGroupInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpGroupInstDirector")); }
	private static __gshared InterpGroupInstDirector mDefaultProperties;
	@property final static InterpGroupInstDirector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpGroupInstDirector)("InterpGroupInstDirector Engine.Default__InterpGroupInstDirector")); }
}

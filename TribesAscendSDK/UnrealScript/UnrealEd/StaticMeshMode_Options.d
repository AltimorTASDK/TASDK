module UnrealScript.UnrealEd.StaticMeshMode_Options;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface StaticMeshMode_Options : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshMode_Options")); }
}

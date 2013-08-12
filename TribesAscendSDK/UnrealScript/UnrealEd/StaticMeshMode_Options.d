module UnrealScript.UnrealEd.StaticMeshMode_Options;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface StaticMeshMode_Options : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshMode_Options")); }
	private static __gshared StaticMeshMode_Options mDefaultProperties;
	@property final static StaticMeshMode_Options DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshMode_Options)("StaticMeshMode_Options UnrealEd.Default__StaticMeshMode_Options")); }
}

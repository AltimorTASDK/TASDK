module UnrealScript.UnrealEd.InterpEdOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpEdOptions")); }
	private static __gshared InterpEdOptions mDefaultProperties;
	@property final static InterpEdOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpEdOptions)("InterpEdOptions UnrealEd.Default__InterpEdOptions")); }
}

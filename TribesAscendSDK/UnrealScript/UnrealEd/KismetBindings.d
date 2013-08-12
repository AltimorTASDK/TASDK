module UnrealScript.UnrealEd.KismetBindings;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface KismetBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.KismetBindings")); }
	private static __gshared KismetBindings mDefaultProperties;
	@property final static KismetBindings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(KismetBindings)("KismetBindings UnrealEd.Default__KismetBindings")); }
}

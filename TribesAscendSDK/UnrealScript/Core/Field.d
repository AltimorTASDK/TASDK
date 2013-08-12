module UnrealScript.Core.Field;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Field : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.Field")); }
	private static __gshared Field mDefaultProperties;
	@property final static Field DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Field)("Field Core.Default__Field")); }
}

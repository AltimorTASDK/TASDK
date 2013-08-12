module UnrealScript.Core.ObjectSerializer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectSerializer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ObjectSerializer")); }
	private static __gshared ObjectSerializer mDefaultProperties;
	@property final static ObjectSerializer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ObjectSerializer)("ObjectSerializer Core.Default__ObjectSerializer")); }
}

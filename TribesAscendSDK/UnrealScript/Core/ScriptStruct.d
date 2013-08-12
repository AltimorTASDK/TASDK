module UnrealScript.Core.ScriptStruct;

import ScriptClasses;
import UnrealScript.Core.Struct;

extern(C++) interface ScriptStruct : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.ScriptStruct")); }
	private static __gshared ScriptStruct mDefaultProperties;
	@property final static ScriptStruct DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ScriptStruct)("ScriptStruct Core.Default__ScriptStruct")); }
}

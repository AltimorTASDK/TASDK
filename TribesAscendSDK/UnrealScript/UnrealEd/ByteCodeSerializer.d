module UnrealScript.UnrealEd.ByteCodeSerializer;

import ScriptClasses;
import UnrealScript.Core.Struct;

extern(C++) interface ByteCodeSerializer : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ByteCodeSerializer")); }
	private static __gshared ByteCodeSerializer mDefaultProperties;
	@property final static ByteCodeSerializer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ByteCodeSerializer)("ByteCodeSerializer UnrealEd.Default__ByteCodeSerializer")); }
}

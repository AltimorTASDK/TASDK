module UnrealScript.UnrealEd.ByteCodeSerializer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Struct;

extern(C++) interface ByteCodeSerializer : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ByteCodeSerializer")); }
	private static __gshared ByteCodeSerializer mDefaultProperties;
	@property final static ByteCodeSerializer DefaultProperties() { mixin(MGDPC("ByteCodeSerializer", "ByteCodeSerializer UnrealEd.Default__ByteCodeSerializer")); }
}

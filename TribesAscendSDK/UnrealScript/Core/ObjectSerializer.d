module UnrealScript.Core.ObjectSerializer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectSerializer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.ObjectSerializer")); }
	private static __gshared ObjectSerializer mDefaultProperties;
	@property final static ObjectSerializer DefaultProperties() { mixin(MGDPC("ObjectSerializer", "ObjectSerializer Core.Default__ObjectSerializer")); }
}

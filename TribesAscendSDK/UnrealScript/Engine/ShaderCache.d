module UnrealScript.Engine.ShaderCache;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ShaderCache : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ShaderCache")); }
	private static __gshared ShaderCache mDefaultProperties;
	@property final static ShaderCache DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShaderCache)("ShaderCache Engine.Default__ShaderCache")); }
}

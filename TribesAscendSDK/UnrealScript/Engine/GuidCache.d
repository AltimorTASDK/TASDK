module UnrealScript.Engine.GuidCache;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GuidCache : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GuidCache")); }
	private static __gshared GuidCache mDefaultProperties;
	@property final static GuidCache DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GuidCache)("GuidCache Engine.Default__GuidCache")); }
}

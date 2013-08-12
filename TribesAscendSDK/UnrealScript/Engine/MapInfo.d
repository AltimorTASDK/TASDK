module UnrealScript.Engine.MapInfo;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MapInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MapInfo")); }
	private static __gshared MapInfo mDefaultProperties;
	@property final static MapInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MapInfo)("MapInfo Engine.Default__MapInfo")); }
}

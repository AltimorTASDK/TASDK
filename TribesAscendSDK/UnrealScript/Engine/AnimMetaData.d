module UnrealScript.Engine.AnimMetaData;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AnimMetaData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimMetaData")); }
	private static __gshared AnimMetaData mDefaultProperties;
	@property final static AnimMetaData DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimMetaData)("AnimMetaData Engine.Default__AnimMetaData")); }
}

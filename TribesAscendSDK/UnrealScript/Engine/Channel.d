module UnrealScript.Engine.Channel;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Channel : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Channel")); }
	private static __gshared Channel mDefaultProperties;
	@property final static Channel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Channel)("Channel Engine.Default__Channel")); }
}

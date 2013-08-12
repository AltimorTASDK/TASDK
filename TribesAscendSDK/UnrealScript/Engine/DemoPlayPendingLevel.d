module UnrealScript.Engine.DemoPlayPendingLevel;

import ScriptClasses;
import UnrealScript.Engine.PendingLevel;

extern(C++) interface DemoPlayPendingLevel : PendingLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DemoPlayPendingLevel")); }
	private static __gshared DemoPlayPendingLevel mDefaultProperties;
	@property final static DemoPlayPendingLevel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DemoPlayPendingLevel)("DemoPlayPendingLevel Engine.Default__DemoPlayPendingLevel")); }
}

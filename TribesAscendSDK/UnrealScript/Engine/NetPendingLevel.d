module UnrealScript.Engine.NetPendingLevel;

import ScriptClasses;
import UnrealScript.Engine.PendingLevel;

extern(C++) interface NetPendingLevel : PendingLevel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NetPendingLevel")); }
	private static __gshared NetPendingLevel mDefaultProperties;
	@property final static NetPendingLevel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NetPendingLevel)("NetPendingLevel Engine.Default__NetPendingLevel")); }
}

module UnrealScript.Engine.ReplicationInfo;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface ReplicationInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ReplicationInfo")); }
	private static __gshared ReplicationInfo mDefaultProperties;
	@property final static ReplicationInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ReplicationInfo)("ReplicationInfo Engine.Default__ReplicationInfo")); }
}

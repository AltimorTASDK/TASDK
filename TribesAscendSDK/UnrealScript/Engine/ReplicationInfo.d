module UnrealScript.Engine.ReplicationInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Info;

extern(C++) interface ReplicationInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ReplicationInfo")()); }
	private static __gshared ReplicationInfo mDefaultProperties;
	@property final static ReplicationInfo DefaultProperties() { mixin(MGDPC!(ReplicationInfo, "ReplicationInfo Engine.Default__ReplicationInfo")()); }
}

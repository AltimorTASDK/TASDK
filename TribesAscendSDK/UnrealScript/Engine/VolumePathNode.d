module UnrealScript.Engine.VolumePathNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PathNode;

extern(C++) interface VolumePathNode : PathNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.VolumePathNode")()); }
	private static __gshared VolumePathNode mDefaultProperties;
	@property final static VolumePathNode DefaultProperties() { mixin(MGDPC!(VolumePathNode, "VolumePathNode Engine.Default__VolumePathNode")()); }
	@property final auto ref
	{
		float StartingHeight() { mixin(MGPC!(float, 696)()); }
		float StartingRadius() { mixin(MGPC!(float, 692)()); }
	}
}

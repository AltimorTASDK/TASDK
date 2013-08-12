module UnrealScript.Engine.VolumePathNode;

import ScriptClasses;
import UnrealScript.Engine.PathNode;

extern(C++) interface VolumePathNode : PathNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.VolumePathNode")); }
	@property final auto ref
	{
		float StartingHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
		float StartingRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
	}
}

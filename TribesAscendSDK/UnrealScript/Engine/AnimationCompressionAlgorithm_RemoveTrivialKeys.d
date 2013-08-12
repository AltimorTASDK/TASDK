module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveTrivialKeys : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys")); }
	@property final auto ref
	{
		float MaxAngleDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		float MaxPosDiff() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	}
}

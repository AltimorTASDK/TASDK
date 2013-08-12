module UnrealScript.Engine.AnimationCompressionAlgorithm_RevertToRaw;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RevertToRaw : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_RevertToRaw")); }
}

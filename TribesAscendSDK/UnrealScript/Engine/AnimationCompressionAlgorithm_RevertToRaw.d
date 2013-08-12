module UnrealScript.Engine.AnimationCompressionAlgorithm_RevertToRaw;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RevertToRaw : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_RevertToRaw")); }
	private static __gshared AnimationCompressionAlgorithm_RevertToRaw mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RevertToRaw DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimationCompressionAlgorithm_RevertToRaw)("AnimationCompressionAlgorithm_RevertToRaw Engine.Default__AnimationCompressionAlgorithm_RevertToRaw")); }
}

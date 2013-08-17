module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveTrivialKeys : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm_RemoveTrivialKeys")()); }
	private static __gshared AnimationCompressionAlgorithm_RemoveTrivialKeys mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RemoveTrivialKeys DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm_RemoveTrivialKeys, "AnimationCompressionAlgorithm_RemoveTrivialKeys Engine.Default__AnimationCompressionAlgorithm_RemoveTrivialKeys")()); }
	@property final auto ref
	{
		float MaxAngleDiff() { mixin(MGPC!(float, 84)()); }
		float MaxPosDiff() { mixin(MGPC!(float, 80)()); }
	}
}

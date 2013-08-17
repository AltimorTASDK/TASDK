module UnrealScript.Engine.AnimationCompressionAlgorithm_BitwiseCompressOnly;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_BitwiseCompressOnly : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm_BitwiseCompressOnly")()); }
	private static __gshared AnimationCompressionAlgorithm_BitwiseCompressOnly mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_BitwiseCompressOnly DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm_BitwiseCompressOnly, "AnimationCompressionAlgorithm_BitwiseCompressOnly Engine.Default__AnimationCompressionAlgorithm_BitwiseCompressOnly")()); }
}

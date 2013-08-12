module UnrealScript.Engine.AnimationCompressionAlgorithm_BitwiseCompressOnly;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_BitwiseCompressOnly : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_BitwiseCompressOnly")); }
	private static __gshared AnimationCompressionAlgorithm_BitwiseCompressOnly mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_BitwiseCompressOnly DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimationCompressionAlgorithm_BitwiseCompressOnly)("AnimationCompressionAlgorithm_BitwiseCompressOnly Engine.Default__AnimationCompressionAlgorithm_BitwiseCompressOnly")); }
}

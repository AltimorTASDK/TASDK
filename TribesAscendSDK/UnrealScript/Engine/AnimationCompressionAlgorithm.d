module UnrealScript.Engine.AnimationCompressionAlgorithm;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimationCompressionAlgorithm : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm")()); }
	private static __gshared AnimationCompressionAlgorithm mDefaultProperties;
	@property final static AnimationCompressionAlgorithm DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm, "AnimationCompressionAlgorithm Engine.Default__AnimationCompressionAlgorithm")()); }
	@property final
	{
		auto ref
		{
			AnimSequence.AnimationCompressionFormat RotationCompressionFormat() { mixin(MGPC!(AnimSequence.AnimationCompressionFormat, 77)()); }
			AnimSequence.AnimationCompressionFormat TranslationCompressionFormat() { mixin(MGPC!(AnimSequence.AnimationCompressionFormat, 76)()); }
			ScriptString Description() { mixin(MGPC!(ScriptString, 60)()); }
		}
		bool bNeedsSkeleton() { mixin(MGBPC!(72, 0x1)()); }
		bool bNeedsSkeleton(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}

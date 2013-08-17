module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveEverySecondKey;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveEverySecondKey : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm_RemoveEverySecondKey")()); }
	private static __gshared AnimationCompressionAlgorithm_RemoveEverySecondKey mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RemoveEverySecondKey DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm_RemoveEverySecondKey, "AnimationCompressionAlgorithm_RemoveEverySecondKey Engine.Default__AnimationCompressionAlgorithm_RemoveEverySecondKey")()); }
	@property final
	{
		@property final auto ref int MinKeys() { mixin(MGPC!(int, 80)()); }
		bool bStartAtSecondKey() { mixin(MGBPC!(84, 0x1)()); }
		bool bStartAtSecondKey(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}

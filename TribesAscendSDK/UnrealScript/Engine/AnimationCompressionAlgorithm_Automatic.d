module UnrealScript.Engine.AnimationCompressionAlgorithm_Automatic;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_Automatic : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm_Automatic")()); }
	private static __gshared AnimationCompressionAlgorithm_Automatic mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_Automatic DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm_Automatic, "AnimationCompressionAlgorithm_Automatic Engine.Default__AnimationCompressionAlgorithm_Automatic")()); }
	@property final
	{
		@property final auto ref float MaxEndEffectorError() { mixin(MGPC!(float, 80)()); }
		bool bRaiseMaxErrorToExisting() { mixin(MGBPC!(84, 0x40)()); }
		bool bRaiseMaxErrorToExisting(bool val) { mixin(MSBPC!(84, 0x40)()); }
		bool bAutoReplaceIfExistingErrorTooGreat() { mixin(MGBPC!(84, 0x20)()); }
		bool bAutoReplaceIfExistingErrorTooGreat(bool val) { mixin(MSBPC!(84, 0x20)()); }
		bool bRunCurrentDefaultCompressor() { mixin(MGBPC!(84, 0x10)()); }
		bool bRunCurrentDefaultCompressor(bool val) { mixin(MSBPC!(84, 0x10)()); }
		bool bTryIntervalKeyRemoval() { mixin(MGBPC!(84, 0x8)()); }
		bool bTryIntervalKeyRemoval(bool val) { mixin(MSBPC!(84, 0x8)()); }
		bool bTryLinearKeyRemovalCompression() { mixin(MGBPC!(84, 0x4)()); }
		bool bTryLinearKeyRemovalCompression(bool val) { mixin(MSBPC!(84, 0x4)()); }
		bool bTryPerTrackBitwiseCompression() { mixin(MGBPC!(84, 0x2)()); }
		bool bTryPerTrackBitwiseCompression(bool val) { mixin(MSBPC!(84, 0x2)()); }
		bool bTryFixedBitwiseCompression() { mixin(MGBPC!(84, 0x1)()); }
		bool bTryFixedBitwiseCompression(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
}

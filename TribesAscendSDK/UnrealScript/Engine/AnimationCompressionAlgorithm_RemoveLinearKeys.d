module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveLinearKeys;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveLinearKeys : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimationCompressionAlgorithm_RemoveLinearKeys")()); }
	private static __gshared AnimationCompressionAlgorithm_RemoveLinearKeys mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RemoveLinearKeys DefaultProperties() { mixin(MGDPC!(AnimationCompressionAlgorithm_RemoveLinearKeys, "AnimationCompressionAlgorithm_RemoveLinearKeys Engine.Default__AnimationCompressionAlgorithm_RemoveLinearKeys")()); }
	@property final
	{
		auto ref
		{
			float ParentKeyScale() { mixin(MGPC!(float, 100)()); }
			float EffectorDiffSocket() { mixin(MGPC!(float, 96)()); }
			float MinEffectorDiff() { mixin(MGPC!(float, 92)()); }
			float MaxEffectorDiff() { mixin(MGPC!(float, 88)()); }
			float MaxAngleDiff() { mixin(MGPC!(float, 84)()); }
			float MaxPosDiff() { mixin(MGPC!(float, 80)()); }
		}
		bool bActuallyFilterLinearKeys() { mixin(MGBPC!(104, 0x2)()); }
		bool bActuallyFilterLinearKeys(bool val) { mixin(MSBPC!(104, 0x2)()); }
		bool bRetarget() { mixin(MGBPC!(104, 0x1)()); }
		bool bRetarget(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}

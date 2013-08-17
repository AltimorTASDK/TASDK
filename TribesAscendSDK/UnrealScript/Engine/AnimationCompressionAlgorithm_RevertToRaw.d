module UnrealScript.Engine.AnimationCompressionAlgorithm_RevertToRaw;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RevertToRaw : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimationCompressionAlgorithm_RevertToRaw")); }
	private static __gshared AnimationCompressionAlgorithm_RevertToRaw mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_RevertToRaw DefaultProperties() { mixin(MGDPC("AnimationCompressionAlgorithm_RevertToRaw", "AnimationCompressionAlgorithm_RevertToRaw Engine.Default__AnimationCompressionAlgorithm_RevertToRaw")); }
}

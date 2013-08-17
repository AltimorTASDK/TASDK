module UnrealScript.Engine.DistributionFloatSoundParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DistributionFloatParameterBase;

extern(C++) interface DistributionFloatSoundParameter : DistributionFloatParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DistributionFloatSoundParameter")); }
	private static __gshared DistributionFloatSoundParameter mDefaultProperties;
	@property final static DistributionFloatSoundParameter DefaultProperties() { mixin(MGDPC("DistributionFloatSoundParameter", "DistributionFloatSoundParameter Engine.Default__DistributionFloatSoundParameter")); }
}

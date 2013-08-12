module UnrealScript.Engine.DistributionFloatSoundParameter;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatParameterBase;

extern(C++) interface DistributionFloatSoundParameter : DistributionFloatParameterBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatSoundParameter")); }
	private static __gshared DistributionFloatSoundParameter mDefaultProperties;
	@property final static DistributionFloatSoundParameter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionFloatSoundParameter)("DistributionFloatSoundParameter Engine.Default__DistributionFloatSoundParameter")); }
}

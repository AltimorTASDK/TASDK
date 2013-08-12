module UnrealScript.Engine.DistributionFloatParameterBase;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatConstant;

extern(C++) interface DistributionFloatParameterBase : DistributionFloatConstant
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionFloatParameterBase")); }
	private static __gshared DistributionFloatParameterBase mDefaultProperties;
	@property final static DistributionFloatParameterBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionFloatParameterBase)("DistributionFloatParameterBase Engine.Default__DistributionFloatParameterBase")); }
	enum DistributionParamMode : ubyte
	{
		DPM_Normal = 0,
		DPM_Abs = 1,
		DPM_Direct = 2,
		DPM_MAX = 3,
	}
	@property final auto ref
	{
		DistributionFloatParameterBase.DistributionParamMode ParamMode() { return *cast(DistributionFloatParameterBase.DistributionParamMode*)(cast(size_t)cast(void*)this + 108); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
		float MaxOutput() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		float MinOutput() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
		float MaxInput() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
		float MinInput() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	}
}

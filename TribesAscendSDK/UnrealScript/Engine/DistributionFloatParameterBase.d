module UnrealScript.Engine.DistributionFloatParameterBase;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatConstant;

extern(C++) interface DistributionFloatParameterBase : DistributionFloatConstant
{
	enum DistributionParamMode : ubyte
	{
		DPM_Normal = 0,
		DPM_Abs = 1,
		DPM_Direct = 2,
		DPM_MAX = 3,
	}
	public @property final auto ref DistributionFloatParameterBase.DistributionParamMode ParamMode() { return *cast(DistributionFloatParameterBase.DistributionParamMode*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float MaxOutput() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float MinOutput() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float MaxInput() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float MinInput() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
}

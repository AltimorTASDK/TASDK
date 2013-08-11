module UnrealScript.Engine.DistributionVectorParameterBase;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatParameterBase;
import UnrealScript.Engine.DistributionVectorConstant;

extern(C++) interface DistributionVectorParameterBase : DistributionVectorConstant
{
	public @property final auto ref DistributionFloatParameterBase.DistributionParamMode ParamModes() { return *cast(DistributionFloatParameterBase.DistributionParamMode*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref Vector MaxOutput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Vector MinOutput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Vector MaxInput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref Vector MinInput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
}

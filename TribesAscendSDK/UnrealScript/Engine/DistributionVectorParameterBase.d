module UnrealScript.Engine.DistributionVectorParameterBase;

import ScriptClasses;
import UnrealScript.Engine.DistributionFloatParameterBase;
import UnrealScript.Engine.DistributionVectorConstant;

extern(C++) interface DistributionVectorParameterBase : DistributionVectorConstant
{
public extern(D):
	@property final auto ref
	{
		DistributionFloatParameterBase.DistributionParamMode ParamModes() { return *cast(DistributionFloatParameterBase.DistributionParamMode*)(cast(size_t)cast(void*)this + 156); }
		Vector MaxOutput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
		Vector MinOutput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
		Vector MaxInput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
		Vector MinInput() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
		ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
	}
}

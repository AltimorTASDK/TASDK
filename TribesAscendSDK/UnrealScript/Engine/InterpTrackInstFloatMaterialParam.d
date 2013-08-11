module UnrealScript.Engine.InterpTrackInstFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackFloatMaterialParam;

extern(C++) interface InterpTrackInstFloatMaterialParam : InterpTrackInst
{
public extern(D):
	struct FloatMaterialParamMICData
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)&this + 0); }
			ScriptArray!(float) MICResetFloats() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData) MICInfos() { return *cast(ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData)*)(cast(size_t)cast(void*)this + 60); }
		InterpTrackFloatMaterialParam InstancedTrack() { return *cast(InterpTrackFloatMaterialParam*)(cast(size_t)cast(void*)this + 72); }
	}
}

module UnrealScript.Engine.InterpTrackInstFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackFloatMaterialParam;

extern(C++) interface InterpTrackInstFloatMaterialParam : InterpTrackInst
{
	struct FloatMaterialParamMICData
	{
		public @property final auto ref ScriptArray!(MaterialInstanceConstant) MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)&this + 0); }
		private ubyte __MICs[12];
		public @property final auto ref ScriptArray!(float) MICResetFloats() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 12); }
		private ubyte __MICResetFloats[12];
	}
	public @property final auto ref ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData) MICInfos() { return *cast(ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref InterpTrackFloatMaterialParam InstancedTrack() { return *cast(InterpTrackFloatMaterialParam*)(cast(size_t)cast(void*)this + 72); }
}

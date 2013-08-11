module UnrealScript.Engine.InterpTrackInstVectorMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackVectorMaterialParam;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstVectorMaterialParam : InterpTrackInst
{
	struct VectorMaterialParamMICData
	{
		public @property final auto ref ScriptArray!(MaterialInstanceConstant) MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)&this + 0); }
		private ubyte __MICs[12];
		public @property final auto ref ScriptArray!(Vector) MICResetVectors() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 12); }
		private ubyte __MICResetVectors[12];
	}
	public @property final auto ref ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData) MICInfos() { return *cast(ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref InterpTrackVectorMaterialParam InstancedTrack() { return *cast(InterpTrackVectorMaterialParam*)(cast(size_t)cast(void*)this + 72); }
}

module UnrealScript.Engine.InterpTrackInstVectorMaterialParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackVectorMaterialParam;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstVectorMaterialParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstVectorMaterialParam")()); }
	private static __gshared InterpTrackInstVectorMaterialParam mDefaultProperties;
	@property final static InterpTrackInstVectorMaterialParam DefaultProperties() { mixin(MGDPC!(InterpTrackInstVectorMaterialParam, "InterpTrackInstVectorMaterialParam Engine.Default__InterpTrackInstVectorMaterialParam")()); }
	struct VectorMaterialParamMICData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData")()); }
		@property final auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICs() { mixin(MGPS!("ScriptArray!(MaterialInstanceConstant)", 0)()); }
			ScriptArray!(Vector) MICResetVectors() { mixin(MGPS!("ScriptArray!(Vector)", 12)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData) MICInfos() { mixin(MGPC!("ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData)", 60)()); }
		InterpTrackVectorMaterialParam InstancedTrack() { mixin(MGPC!("InterpTrackVectorMaterialParam", 72)()); }
	}
}

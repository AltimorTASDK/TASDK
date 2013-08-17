module UnrealScript.Engine.InterpTrackInstFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackFloatMaterialParam;

extern(C++) interface InterpTrackInstFloatMaterialParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstFloatMaterialParam")()); }
	private static __gshared InterpTrackInstFloatMaterialParam mDefaultProperties;
	@property final static InterpTrackInstFloatMaterialParam DefaultProperties() { mixin(MGDPC!(InterpTrackInstFloatMaterialParam, "InterpTrackInstFloatMaterialParam Engine.Default__InterpTrackInstFloatMaterialParam")()); }
	struct FloatMaterialParamMICData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData")()); }
		@property final auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICs() { mixin(MGPS!(ScriptArray!(MaterialInstanceConstant), 0)()); }
			ScriptArray!(float) MICResetFloats() { mixin(MGPS!(ScriptArray!(float), 12)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData) MICInfos() { mixin(MGPC!(ScriptArray!(InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData), 60)()); }
		InterpTrackFloatMaterialParam InstancedTrack() { mixin(MGPC!(InterpTrackFloatMaterialParam, 72)()); }
	}
}

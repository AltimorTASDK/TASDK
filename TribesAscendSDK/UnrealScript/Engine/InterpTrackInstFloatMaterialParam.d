module UnrealScript.Engine.InterpTrackInstFloatMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackFloatMaterialParam;

extern(C++) interface InterpTrackInstFloatMaterialParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstFloatMaterialParam")); }
	private static __gshared InterpTrackInstFloatMaterialParam mDefaultProperties;
	@property final static InterpTrackInstFloatMaterialParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstFloatMaterialParam)("InterpTrackInstFloatMaterialParam Engine.Default__InterpTrackInstFloatMaterialParam")); }
	struct FloatMaterialParamMICData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackInstFloatMaterialParam.FloatMaterialParamMICData")); }
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

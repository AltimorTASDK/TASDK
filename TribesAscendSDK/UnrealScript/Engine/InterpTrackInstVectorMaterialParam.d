module UnrealScript.Engine.InterpTrackInstVectorMaterialParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.InterpTrackVectorMaterialParam;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstVectorMaterialParam : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstVectorMaterialParam")); }
	private static __gshared InterpTrackInstVectorMaterialParam mDefaultProperties;
	@property final static InterpTrackInstVectorMaterialParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstVectorMaterialParam)("InterpTrackInstVectorMaterialParam Engine.Default__InterpTrackInstVectorMaterialParam")); }
	struct VectorMaterialParamMICData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData")); }
		@property final auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICs() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)&this + 0); }
			ScriptArray!(Vector) MICResetVectors() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 12); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData) MICInfos() { return *cast(ScriptArray!(InterpTrackInstVectorMaterialParam.VectorMaterialParamMICData)*)(cast(size_t)cast(void*)this + 60); }
		InterpTrackVectorMaterialParam InstancedTrack() { return *cast(InterpTrackVectorMaterialParam*)(cast(size_t)cast(void*)this + 72); }
	}
}

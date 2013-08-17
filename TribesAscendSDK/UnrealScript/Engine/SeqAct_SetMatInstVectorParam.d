module UnrealScript.Engine.SeqAct_SetMatInstVectorParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstVectorParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMatInstVectorParam")()); }
	private static __gshared SeqAct_SetMatInstVectorParam mDefaultProperties;
	@property final static SeqAct_SetMatInstVectorParam DefaultProperties() { mixin(MGDPC!(SeqAct_SetMatInstVectorParam, "SeqAct_SetMatInstVectorParam Engine.Default__SeqAct_SetMatInstVectorParam")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_SetMatInstVectorParam.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		UObject.LinearColor VectorValue() { mixin(MGPC!("UObject.LinearColor", 244)()); }
		ScriptName ParamName() { mixin(MGPC!("ScriptName", 236)()); }
		MaterialInstanceConstant MatInst() { mixin(MGPC!("MaterialInstanceConstant", 232)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

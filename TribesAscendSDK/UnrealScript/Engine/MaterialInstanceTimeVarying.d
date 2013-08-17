module UnrealScript.Engine.MaterialInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceTimeVarying : MaterialInstance
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInstanceTimeVarying")()); }
	private static __gshared MaterialInstanceTimeVarying mDefaultProperties;
	@property final static MaterialInstanceTimeVarying DefaultProperties() { mixin(MGDPC!(MaterialInstanceTimeVarying, "MaterialInstanceTimeVarying Engine.Default__MaterialInstanceTimeVarying")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetParent;
			ScriptFunction mSetScalarParameterValue;
			ScriptFunction mSetScalarCurveParameterValue;
			ScriptFunction mSetScalarStartTime;
			ScriptFunction mSetDuration;
			ScriptFunction mSetTextureParameterValue;
			ScriptFunction mSetVectorParameterValue;
			ScriptFunction mSetVectorCurveParameterValue;
			ScriptFunction mSetVectorStartTime;
			ScriptFunction mSetFontParameterValue;
			ScriptFunction mClearParameterValues;
			ScriptFunction mGetMaxDurationFromAllParameters;
		}
		public @property static final
		{
			ScriptFunction SetParent() { mixin(MGF!("mSetParent", "Function Engine.MaterialInstanceTimeVarying.SetParent")()); }
			ScriptFunction SetScalarParameterValue() { mixin(MGF!("mSetScalarParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetScalarParameterValue")()); }
			ScriptFunction SetScalarCurveParameterValue() { mixin(MGF!("mSetScalarCurveParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetScalarCurveParameterValue")()); }
			ScriptFunction SetScalarStartTime() { mixin(MGF!("mSetScalarStartTime", "Function Engine.MaterialInstanceTimeVarying.SetScalarStartTime")()); }
			ScriptFunction SetDuration() { mixin(MGF!("mSetDuration", "Function Engine.MaterialInstanceTimeVarying.SetDuration")()); }
			ScriptFunction SetTextureParameterValue() { mixin(MGF!("mSetTextureParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetTextureParameterValue")()); }
			ScriptFunction SetVectorParameterValue() { mixin(MGF!("mSetVectorParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetVectorParameterValue")()); }
			ScriptFunction SetVectorCurveParameterValue() { mixin(MGF!("mSetVectorCurveParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetVectorCurveParameterValue")()); }
			ScriptFunction SetVectorStartTime() { mixin(MGF!("mSetVectorStartTime", "Function Engine.MaterialInstanceTimeVarying.SetVectorStartTime")()); }
			ScriptFunction SetFontParameterValue() { mixin(MGF!("mSetFontParameterValue", "Function Engine.MaterialInstanceTimeVarying.SetFontParameterValue")()); }
			ScriptFunction ClearParameterValues() { mixin(MGF!("mClearParameterValues", "Function Engine.MaterialInstanceTimeVarying.ClearParameterValues")()); }
			ScriptFunction GetMaxDurationFromAllParameters() { mixin(MGF!("mGetMaxDurationFromAllParameters", "Function Engine.MaterialInstanceTimeVarying.GetMaxDurationFromAllParameters")()); }
		}
	}
	struct ParameterValueOverTime
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceTimeVarying.ParameterValueOverTime")()); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { mixin(MGPS!(float, 40)()); }
				float CycleTime() { mixin(MGPS!(float, 32)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 20)()); }
				float StartTime() { mixin(MGPS!(float, 16)()); }
				UObject.Guid ExpressionGUID() { mixin(MGPS!(UObject.Guid, 0)()); }
			}
			bool bOffsetFromEnd() { mixin(MGBPS!(44, 0x1)()); }
			bool bOffsetFromEnd(bool val) { mixin(MSBPS!(44, 0x1)()); }
			bool bNormalizeTime() { mixin(MGBPS!(36, 0x1)()); }
			bool bNormalizeTime(bool val) { mixin(MSBPS!(36, 0x1)()); }
			bool bAutoActivate() { mixin(MGBPS!(28, 0x2)()); }
			bool bAutoActivate(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bLoop() { mixin(MGBPS!(28, 0x1)()); }
			bool bLoop(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	struct FontParameterValueOverTime
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceTimeVarying.FontParameterValueOverTime")()); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { mixin(MGPS!(float, 40)()); }
				float CycleTime() { mixin(MGPS!(float, 32)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 20)()); }
				float StartTime() { mixin(MGPS!(float, 16)()); }
				UObject.Guid ExpressionGUID() { mixin(MGPS!(UObject.Guid, 0)()); }
			}
			bool bOffsetFromEnd() { mixin(MGBPS!(44, 0x1)()); }
			bool bOffsetFromEnd(bool val) { mixin(MSBPS!(44, 0x1)()); }
			bool bNormalizeTime() { mixin(MGBPS!(36, 0x1)()); }
			bool bNormalizeTime(bool val) { mixin(MSBPS!(36, 0x1)()); }
			bool bAutoActivate() { mixin(MGBPS!(28, 0x2)()); }
			bool bAutoActivate(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bLoop() { mixin(MGBPS!(28, 0x1)()); }
			bool bLoop(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
		@property final auto ref
		{
			int FontPage() { mixin(MGPS!(int, 52)()); }
			Font FontValue() { mixin(MGPS!(Font, 48)()); }
		}
	}
	struct ScalarParameterValueOverTime
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceTimeVarying.ScalarParameterValueOverTime")()); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { mixin(MGPS!(float, 40)()); }
				float CycleTime() { mixin(MGPS!(float, 32)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 20)()); }
				float StartTime() { mixin(MGPS!(float, 16)()); }
				UObject.Guid ExpressionGUID() { mixin(MGPS!(UObject.Guid, 0)()); }
			}
			bool bOffsetFromEnd() { mixin(MGBPS!(44, 0x1)()); }
			bool bOffsetFromEnd(bool val) { mixin(MSBPS!(44, 0x1)()); }
			bool bNormalizeTime() { mixin(MGBPS!(36, 0x1)()); }
			bool bNormalizeTime(bool val) { mixin(MSBPS!(36, 0x1)()); }
			bool bAutoActivate() { mixin(MGBPS!(28, 0x2)()); }
			bool bAutoActivate(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bLoop() { mixin(MGBPS!(28, 0x1)()); }
			bool bLoop(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
		@property final auto ref
		{
			UObject.InterpCurveFloat ParameterValueCurve() { mixin(MGPS!(UObject.InterpCurveFloat, 52)()); }
			float ParameterValue() { mixin(MGPS!(float, 48)()); }
		}
	}
	struct TextureParameterValueOverTime
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceTimeVarying.TextureParameterValueOverTime")()); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { mixin(MGPS!(float, 40)()); }
				float CycleTime() { mixin(MGPS!(float, 32)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 20)()); }
				float StartTime() { mixin(MGPS!(float, 16)()); }
				UObject.Guid ExpressionGUID() { mixin(MGPS!(UObject.Guid, 0)()); }
			}
			bool bOffsetFromEnd() { mixin(MGBPS!(44, 0x1)()); }
			bool bOffsetFromEnd(bool val) { mixin(MSBPS!(44, 0x1)()); }
			bool bNormalizeTime() { mixin(MGBPS!(36, 0x1)()); }
			bool bNormalizeTime(bool val) { mixin(MSBPS!(36, 0x1)()); }
			bool bAutoActivate() { mixin(MGBPS!(28, 0x2)()); }
			bool bAutoActivate(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bLoop() { mixin(MGBPS!(28, 0x1)()); }
			bool bLoop(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
		@property final auto ref Texture ParameterValue() { mixin(MGPS!(Texture, 48)()); }
	}
	struct VectorParameterValueOverTime
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceTimeVarying.VectorParameterValueOverTime")()); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { mixin(MGPS!(float, 40)()); }
				float CycleTime() { mixin(MGPS!(float, 32)()); }
				ScriptName ParameterName() { mixin(MGPS!(ScriptName, 20)()); }
				float StartTime() { mixin(MGPS!(float, 16)()); }
				UObject.Guid ExpressionGUID() { mixin(MGPS!(UObject.Guid, 0)()); }
			}
			bool bOffsetFromEnd() { mixin(MGBPS!(44, 0x1)()); }
			bool bOffsetFromEnd(bool val) { mixin(MSBPS!(44, 0x1)()); }
			bool bNormalizeTime() { mixin(MGBPS!(36, 0x1)()); }
			bool bNormalizeTime(bool val) { mixin(MSBPS!(36, 0x1)()); }
			bool bAutoActivate() { mixin(MGBPS!(28, 0x2)()); }
			bool bAutoActivate(bool val) { mixin(MSBPS!(28, 0x2)()); }
			bool bLoop() { mixin(MGBPS!(28, 0x1)()); }
			bool bLoop(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
		@property final auto ref
		{
			UObject.InterpCurveVector ParameterValueCurve() { mixin(MGPS!(UObject.InterpCurveVector, 64)()); }
			UObject.LinearColor ParameterValue() { mixin(MGPS!(UObject.LinearColor, 48)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime) FontParameterValues() { mixin(MGPC!(ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime), 440)()); }
			ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime) ScalarParameterValues() { mixin(MGPC!(ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime), 452)()); }
			ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime) TextureParameterValues() { mixin(MGPC!(ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime), 464)()); }
			ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime) VectorParameterValues() { mixin(MGPC!(ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime), 476)()); }
			float Duration() { mixin(MGPC!(float, 436)()); }
		}
		bool bAutoActivateAll() { mixin(MGBPC!(432, 0x1)()); }
		bool bAutoActivateAll(bool val) { mixin(MSBPC!(432, 0x1)()); }
	}
final:
	void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetParent, params.ptr, cast(void*)0);
	}
	void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarParameterValue, params.ptr, cast(void*)0);
	}
	void SetScalarCurveParameterValue(ScriptName ParameterName, ref const UObject.InterpCurveFloat Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarCurveParameterValue, params.ptr, cast(void*)0);
		*Value = *cast(UObject.InterpCurveFloat*)&params[8];
	}
	void SetScalarStartTime(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarStartTime, params.ptr, cast(void*)0);
	}
	void SetDuration(float Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDuration, params.ptr, cast(void*)0);
	}
	void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTextureParameterValue, params.ptr, cast(void*)0);
	}
	void SetVectorParameterValue(ScriptName ParameterName, ref const UObject.LinearColor Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameterValue, params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	void SetVectorCurveParameterValue(ScriptName ParameterName, ref const UObject.InterpCurveVector Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorCurveParameterValue, params.ptr, cast(void*)0);
		*Value = *cast(UObject.InterpCurveVector*)&params[8];
	}
	void SetVectorStartTime(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorStartTime, params.ptr, cast(void*)0);
	}
	void SetFontParameterValue(ScriptName ParameterName, Font FontValue, int FontPage)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = FontValue;
		*cast(int*)&params[12] = FontPage;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFontParameterValue, params.ptr, cast(void*)0);
	}
	void ClearParameterValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearParameterValues, cast(void*)0, cast(void*)0);
	}
	float GetMaxDurationFromAllParameters()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxDurationFromAllParameters, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}

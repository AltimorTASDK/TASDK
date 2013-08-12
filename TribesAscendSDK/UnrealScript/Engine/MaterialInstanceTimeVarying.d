module UnrealScript.Engine.MaterialInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceTimeVarying : MaterialInstance
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstanceTimeVarying")); }
	private static __gshared MaterialInstanceTimeVarying mDefaultProperties;
	@property final static MaterialInstanceTimeVarying DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialInstanceTimeVarying)("MaterialInstanceTimeVarying Engine.Default__MaterialInstanceTimeVarying")); }
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
			ScriptFunction SetParent() { return mSetParent ? mSetParent : (mSetParent = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetParent")); }
			ScriptFunction SetScalarParameterValue() { return mSetScalarParameterValue ? mSetScalarParameterValue : (mSetScalarParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetScalarParameterValue")); }
			ScriptFunction SetScalarCurveParameterValue() { return mSetScalarCurveParameterValue ? mSetScalarCurveParameterValue : (mSetScalarCurveParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetScalarCurveParameterValue")); }
			ScriptFunction SetScalarStartTime() { return mSetScalarStartTime ? mSetScalarStartTime : (mSetScalarStartTime = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetScalarStartTime")); }
			ScriptFunction SetDuration() { return mSetDuration ? mSetDuration : (mSetDuration = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetDuration")); }
			ScriptFunction SetTextureParameterValue() { return mSetTextureParameterValue ? mSetTextureParameterValue : (mSetTextureParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetTextureParameterValue")); }
			ScriptFunction SetVectorParameterValue() { return mSetVectorParameterValue ? mSetVectorParameterValue : (mSetVectorParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetVectorParameterValue")); }
			ScriptFunction SetVectorCurveParameterValue() { return mSetVectorCurveParameterValue ? mSetVectorCurveParameterValue : (mSetVectorCurveParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetVectorCurveParameterValue")); }
			ScriptFunction SetVectorStartTime() { return mSetVectorStartTime ? mSetVectorStartTime : (mSetVectorStartTime = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetVectorStartTime")); }
			ScriptFunction SetFontParameterValue() { return mSetFontParameterValue ? mSetFontParameterValue : (mSetFontParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.SetFontParameterValue")); }
			ScriptFunction ClearParameterValues() { return mClearParameterValues ? mClearParameterValues : (mClearParameterValues = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.ClearParameterValues")); }
			ScriptFunction GetMaxDurationFromAllParameters() { return mGetMaxDurationFromAllParameters ? mGetMaxDurationFromAllParameters : (mGetMaxDurationFromAllParameters = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceTimeVarying.GetMaxDurationFromAllParameters")); }
		}
	}
	struct ParameterValueOverTime
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceTimeVarying.ParameterValueOverTime")); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
				float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
				UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
			}
			bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	struct FontParameterValueOverTime
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceTimeVarying.FontParameterValueOverTime")); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
				float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
				UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
			}
			bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
		@property final auto ref
		{
			int FontPage() { return *cast(int*)(cast(size_t)&this + 52); }
			Font FontValue() { return *cast(Font*)(cast(size_t)&this + 48); }
		}
	}
	struct ScalarParameterValueOverTime
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceTimeVarying.ScalarParameterValueOverTime")); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
				float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
				UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
			}
			bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
		@property final auto ref
		{
			UObject.InterpCurveFloat ParameterValueCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)&this + 52); }
			float ParameterValue() { return *cast(float*)(cast(size_t)&this + 48); }
		}
	}
	struct TextureParameterValueOverTime
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceTimeVarying.TextureParameterValueOverTime")); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
				float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
				UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
			}
			bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
		@property final auto ref Texture ParameterValue() { return *cast(Texture*)(cast(size_t)&this + 48); }
	}
	struct VectorParameterValueOverTime
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceTimeVarying.VectorParameterValueOverTime")); }
		@property final
		{
			auto ref
			{
				float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
				float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
				UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
			}
			bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
		@property final auto ref
		{
			UObject.InterpCurveVector ParameterValueCurve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)&this + 64); }
			UObject.LinearColor ParameterValue() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 48); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime) FontParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime)*)(cast(size_t)cast(void*)this + 440); }
			ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime) ScalarParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime)*)(cast(size_t)cast(void*)this + 452); }
			ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime) TextureParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime)*)(cast(size_t)cast(void*)this + 464); }
			ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime) VectorParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime)*)(cast(size_t)cast(void*)this + 476); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
		}
		bool bAutoActivateAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 432) & 0x1) != 0; }
		bool bAutoActivateAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 432) &= ~0x1; } return val; }
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
	void SetScalarCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveFloat* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = *Value;
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
	void SetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameterValue, params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	void SetVectorCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveVector* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = *Value;
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

module UnrealScript.Engine.MaterialInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceTimeVarying : MaterialInstance
{
	struct ParameterValueOverTime
	{
		public @property final bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bOffsetFromEnd[4];
		public @property final auto ref float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __OffsetTime[4];
		public @property final bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bNormalizeTime[4];
		public @property final auto ref float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __CycleTime[4];
		public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAutoActivate[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __ParameterName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTime[4];
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
		private ubyte __ExpressionGUID[16];
	}
	struct FontParameterValueOverTime
	{
		public @property final bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bOffsetFromEnd[4];
		public @property final auto ref float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __OffsetTime[4];
		public @property final bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bNormalizeTime[4];
		public @property final auto ref float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __CycleTime[4];
		public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAutoActivate[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __ParameterName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTime[4];
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref int FontPage() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __FontPage[4];
		public @property final auto ref Font FontValue() { return *cast(Font*)(cast(size_t)&this + 48); }
		private ubyte __FontValue[4];
	}
	struct ScalarParameterValueOverTime
	{
		public @property final bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bOffsetFromEnd[4];
		public @property final auto ref float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __OffsetTime[4];
		public @property final bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bNormalizeTime[4];
		public @property final auto ref float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __CycleTime[4];
		public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAutoActivate[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __ParameterName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTime[4];
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref UObject.InterpCurveFloat ParameterValueCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)&this + 52); }
		private ubyte __ParameterValueCurve[16];
		public @property final auto ref float ParameterValue() { return *cast(float*)(cast(size_t)&this + 48); }
		private ubyte __ParameterValue[4];
	}
	struct TextureParameterValueOverTime
	{
		public @property final bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bOffsetFromEnd[4];
		public @property final auto ref float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __OffsetTime[4];
		public @property final bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bNormalizeTime[4];
		public @property final auto ref float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __CycleTime[4];
		public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAutoActivate[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __ParameterName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTime[4];
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref Texture ParameterValue() { return *cast(Texture*)(cast(size_t)&this + 48); }
		private ubyte __ParameterValue[4];
	}
	struct VectorParameterValueOverTime
	{
		public @property final bool bOffsetFromEnd() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bOffsetFromEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bOffsetFromEnd[4];
		public @property final auto ref float OffsetTime() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __OffsetTime[4];
		public @property final bool bNormalizeTime() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bNormalizeTime(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bNormalizeTime[4];
		public @property final auto ref float CycleTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __CycleTime[4];
		public @property final bool bAutoActivate() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bAutoActivate[4];
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 20); }
		private ubyte __ParameterName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTime[4];
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 0); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref UObject.InterpCurveVector ParameterValueCurve() { return *cast(UObject.InterpCurveVector*)(cast(size_t)&this + 64); }
		private ubyte __ParameterValueCurve[16];
		public @property final auto ref UObject.LinearColor ParameterValue() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 48); }
		private ubyte __ParameterValue[16];
	}
	public @property final auto ref ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime) FontParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.FontParameterValueOverTime)*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime) ScalarParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.ScalarParameterValueOverTime)*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime) TextureParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.TextureParameterValueOverTime)*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime) VectorParameterValues() { return *cast(ScriptArray!(MaterialInstanceTimeVarying.VectorParameterValueOverTime)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
	public @property final bool bAutoActivateAll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 432) & 0x1) != 0; }
	public @property final bool bAutoActivateAll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 432) &= ~0x1; } return val; }
	final void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19883], params.ptr, cast(void*)0);
	}
	final void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19885], params.ptr, cast(void*)0);
	}
	final void SetScalarCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveFloat* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19888], params.ptr, cast(void*)0);
		*Value = *cast(UObject.InterpCurveFloat*)&params[8];
	}
	final void SetScalarStartTime(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19891], params.ptr, cast(void*)0);
	}
	final void SetDuration(float Value)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19894], params.ptr, cast(void*)0);
	}
	final void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19896], params.ptr, cast(void*)0);
	}
	final void SetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19899], params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	final void SetVectorCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveVector* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveVector*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19902], params.ptr, cast(void*)0);
		*Value = *cast(UObject.InterpCurveVector*)&params[8];
	}
	final void SetVectorStartTime(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19905], params.ptr, cast(void*)0);
	}
	final void SetFontParameterValue(ScriptName ParameterName, Font FontValue, int FontPage)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = FontValue;
		*cast(int*)&params[12] = FontPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19908], params.ptr, cast(void*)0);
	}
	final void ClearParameterValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19912], cast(void*)0, cast(void*)0);
	}
	final float GetMaxDurationFromAllParameters()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19913], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}

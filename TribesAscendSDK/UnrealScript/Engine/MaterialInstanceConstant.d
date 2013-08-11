module UnrealScript.Engine.MaterialInstanceConstant;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceConstant : MaterialInstance
{
public extern(D):
	struct FontParameterValue
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 16); }
			int FontPage() { return *cast(int*)(cast(size_t)&this + 12); }
			Font FontValue() { return *cast(Font*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct ScalarParameterValue
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 12); }
			float ParameterValue() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct TextureParameterValue
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 12); }
			Texture ParameterValue() { return *cast(Texture*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct VectorParameterValue
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 24); }
			UObject.LinearColor ParameterValue() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 8); }
			ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInstanceConstant.FontParameterValue) FontParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.FontParameterValue)*)(cast(size_t)cast(void*)this + 432); }
		ScriptArray!(MaterialInstanceConstant.ScalarParameterValue) ScalarParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.ScalarParameterValue)*)(cast(size_t)cast(void*)this + 444); }
		ScriptArray!(MaterialInstanceConstant.TextureParameterValue) TextureParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.TextureParameterValue)*)(cast(size_t)cast(void*)this + 456); }
		ScriptArray!(MaterialInstanceConstant.VectorParameterValue) VectorParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.VectorParameterValue)*)(cast(size_t)cast(void*)this + 468); }
	}
final:
	void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19836], params.ptr, cast(void*)0);
	}
	void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19838], params.ptr, cast(void*)0);
	}
	void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19841], params.ptr, cast(void*)0);
	}
	void SetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19844], params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	void SetFontParameterValue(ScriptName ParameterName, Font FontValue, int FontPage)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = FontValue;
		*cast(int*)&params[12] = FontPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19847], params.ptr, cast(void*)0);
	}
	void ClearParameterValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19851], cast(void*)0, cast(void*)0);
	}
}

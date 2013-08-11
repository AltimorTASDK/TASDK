module UnrealScript.Engine.MaterialInstanceConstant;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceConstant : MaterialInstance
{
	struct FontParameterValue
	{
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 16); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref int FontPage() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __FontPage[4];
		public @property final auto ref Font FontValue() { return *cast(Font*)(cast(size_t)&this + 8); }
		private ubyte __FontValue[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	struct ScalarParameterValue
	{
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 12); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref float ParameterValue() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ParameterValue[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	struct TextureParameterValue
	{
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 12); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref Texture ParameterValue() { return *cast(Texture*)(cast(size_t)&this + 8); }
		private ubyte __ParameterValue[4];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	struct VectorParameterValue
	{
		public @property final auto ref UObject.Guid ExpressionGUID() { return *cast(UObject.Guid*)(cast(size_t)&this + 24); }
		private ubyte __ExpressionGUID[16];
		public @property final auto ref UObject.LinearColor ParameterValue() { return *cast(UObject.LinearColor*)(cast(size_t)&this + 8); }
		private ubyte __ParameterValue[16];
		public @property final auto ref ScriptName ParameterName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ParameterName[8];
	}
	public @property final auto ref ScriptArray!(MaterialInstanceConstant.FontParameterValue) FontParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.FontParameterValue)*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref ScriptArray!(MaterialInstanceConstant.ScalarParameterValue) ScalarParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.ScalarParameterValue)*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref ScriptArray!(MaterialInstanceConstant.TextureParameterValue) TextureParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.TextureParameterValue)*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref ScriptArray!(MaterialInstanceConstant.VectorParameterValue) VectorParameterValues() { return *cast(ScriptArray!(MaterialInstanceConstant.VectorParameterValue)*)(cast(size_t)cast(void*)this + 468); }
	final void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19836], params.ptr, cast(void*)0);
	}
	final void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19838], params.ptr, cast(void*)0);
	}
	final void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19841], params.ptr, cast(void*)0);
	}
	final void SetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19844], params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	final void SetFontParameterValue(ScriptName ParameterName, Font FontValue, int FontPage)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = FontValue;
		*cast(int*)&params[12] = FontPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19847], params.ptr, cast(void*)0);
	}
	final void ClearParameterValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19851], cast(void*)0, cast(void*)0);
	}
}

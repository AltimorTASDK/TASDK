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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstanceConstant")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetParent;
			ScriptFunction mSetScalarParameterValue;
			ScriptFunction mSetTextureParameterValue;
			ScriptFunction mSetVectorParameterValue;
			ScriptFunction mSetFontParameterValue;
			ScriptFunction mClearParameterValues;
		}
		public @property static final
		{
			ScriptFunction SetParent() { return mSetParent ? mSetParent : (mSetParent = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.SetParent")); }
			ScriptFunction SetScalarParameterValue() { return mSetScalarParameterValue ? mSetScalarParameterValue : (mSetScalarParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.SetScalarParameterValue")); }
			ScriptFunction SetTextureParameterValue() { return mSetTextureParameterValue ? mSetTextureParameterValue : (mSetTextureParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.SetTextureParameterValue")); }
			ScriptFunction SetVectorParameterValue() { return mSetVectorParameterValue ? mSetVectorParameterValue : (mSetVectorParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.SetVectorParameterValue")); }
			ScriptFunction SetFontParameterValue() { return mSetFontParameterValue ? mSetFontParameterValue : (mSetFontParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.SetFontParameterValue")); }
			ScriptFunction ClearParameterValues() { return mClearParameterValues ? mClearParameterValues : (mClearParameterValues = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstanceConstant.ClearParameterValues")); }
		}
	}
	struct FontParameterValue
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceConstant.FontParameterValue")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceConstant.ScalarParameterValue")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceConstant.TextureParameterValue")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialInstanceConstant.VectorParameterValue")); }
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
}

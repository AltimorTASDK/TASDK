module UnrealScript.Engine.MaterialInstanceConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Texture;

extern(C++) interface MaterialInstanceConstant : MaterialInstance
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInstanceConstant")()); }
	private static __gshared MaterialInstanceConstant mDefaultProperties;
	@property final static MaterialInstanceConstant DefaultProperties() { mixin(MGDPC!(MaterialInstanceConstant, "MaterialInstanceConstant Engine.Default__MaterialInstanceConstant")()); }
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
			ScriptFunction SetParent() { mixin(MGF!("mSetParent", "Function Engine.MaterialInstanceConstant.SetParent")()); }
			ScriptFunction SetScalarParameterValue() { mixin(MGF!("mSetScalarParameterValue", "Function Engine.MaterialInstanceConstant.SetScalarParameterValue")()); }
			ScriptFunction SetTextureParameterValue() { mixin(MGF!("mSetTextureParameterValue", "Function Engine.MaterialInstanceConstant.SetTextureParameterValue")()); }
			ScriptFunction SetVectorParameterValue() { mixin(MGF!("mSetVectorParameterValue", "Function Engine.MaterialInstanceConstant.SetVectorParameterValue")()); }
			ScriptFunction SetFontParameterValue() { mixin(MGF!("mSetFontParameterValue", "Function Engine.MaterialInstanceConstant.SetFontParameterValue")()); }
			ScriptFunction ClearParameterValues() { mixin(MGF!("mClearParameterValues", "Function Engine.MaterialInstanceConstant.ClearParameterValues")()); }
		}
	}
	struct FontParameterValue
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceConstant.FontParameterValue")()); }
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { mixin(MGPS!("UObject.Guid", 16)()); }
			int FontPage() { mixin(MGPS!("int", 12)()); }
			Font FontValue() { mixin(MGPS!("Font", 8)()); }
			ScriptName ParameterName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct ScalarParameterValue
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceConstant.ScalarParameterValue")()); }
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { mixin(MGPS!("UObject.Guid", 12)()); }
			float ParameterValue() { mixin(MGPS!("float", 8)()); }
			ScriptName ParameterName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct TextureParameterValue
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceConstant.TextureParameterValue")()); }
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { mixin(MGPS!("UObject.Guid", 12)()); }
			Texture ParameterValue() { mixin(MGPS!("Texture", 8)()); }
			ScriptName ParameterName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct VectorParameterValue
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MaterialInstanceConstant.VectorParameterValue")()); }
		@property final auto ref
		{
			UObject.Guid ExpressionGUID() { mixin(MGPS!("UObject.Guid", 24)()); }
			UObject.LinearColor ParameterValue() { mixin(MGPS!("UObject.LinearColor", 8)()); }
			ScriptName ParameterName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInstanceConstant.FontParameterValue) FontParameterValues() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant.FontParameterValue)", 432)()); }
		ScriptArray!(MaterialInstanceConstant.ScalarParameterValue) ScalarParameterValues() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant.ScalarParameterValue)", 444)()); }
		ScriptArray!(MaterialInstanceConstant.TextureParameterValue) TextureParameterValues() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant.TextureParameterValue)", 456)()); }
		ScriptArray!(MaterialInstanceConstant.VectorParameterValue) VectorParameterValues() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant.VectorParameterValue)", 468)()); }
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
	void SetVectorParameterValue(ScriptName ParameterName, ref in UObject.LinearColor Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = cast(UObject.LinearColor)Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameterValue, params.ptr, cast(void*)0);
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

module UnrealScript.Engine.MaterialInstance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.Font;

extern(C++) interface MaterialInstance : MaterialInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialInstance")()); }
	private static __gshared MaterialInstance mDefaultProperties;
	@property final static MaterialInstance DefaultProperties() { mixin(MGDPC!(MaterialInstance, "MaterialInstance Engine.Default__MaterialInstance")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetParent;
			ScriptFunction mSetVectorParameterValue;
			ScriptFunction mSetScalarParameterValue;
			ScriptFunction mSetScalarCurveParameterValue;
			ScriptFunction mSetTextureParameterValue;
			ScriptFunction mSetFontParameterValue;
			ScriptFunction mClearParameterValues;
			ScriptFunction mIsInMapOrTransientPackage;
		}
		public @property static final
		{
			ScriptFunction SetParent() { mixin(MGF!("mSetParent", "Function Engine.MaterialInstance.SetParent")()); }
			ScriptFunction SetVectorParameterValue() { mixin(MGF!("mSetVectorParameterValue", "Function Engine.MaterialInstance.SetVectorParameterValue")()); }
			ScriptFunction SetScalarParameterValue() { mixin(MGF!("mSetScalarParameterValue", "Function Engine.MaterialInstance.SetScalarParameterValue")()); }
			ScriptFunction SetScalarCurveParameterValue() { mixin(MGF!("mSetScalarCurveParameterValue", "Function Engine.MaterialInstance.SetScalarCurveParameterValue")()); }
			ScriptFunction SetTextureParameterValue() { mixin(MGF!("mSetTextureParameterValue", "Function Engine.MaterialInstance.SetTextureParameterValue")()); }
			ScriptFunction SetFontParameterValue() { mixin(MGF!("mSetFontParameterValue", "Function Engine.MaterialInstance.SetFontParameterValue")()); }
			ScriptFunction ClearParameterValues() { mixin(MGF!("mClearParameterValues", "Function Engine.MaterialInstance.ClearParameterValues")()); }
			ScriptFunction IsInMapOrTransientPackage() { mixin(MGF!("mIsInMapOrTransientPackage", "Function Engine.MaterialInstance.IsInMapOrTransientPackage")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Texture) ReferencedTextures() { mixin(MGPC!("ScriptArray!(Texture)", 392)()); }
			ScriptArray!(UObject.Guid) ReferencedTextureGuids() { mixin(MGPC!("ScriptArray!(UObject.Guid)", 404)()); }
			UObject.Guid ParentLightingGuid() { mixin(MGPC!("UObject.Guid", 416)()); }
			UObject.Pointer Resources() { mixin(MGPC!("UObject.Pointer", 380)()); }
			UObject.Pointer StaticPermutationResources() { mixin(MGPC!("UObject.Pointer", 372)()); }
			UObject.Pointer StaticParameters() { mixin(MGPC!("UObject.Pointer", 364)()); }
			PhysicalMaterial WhitePhysicalMaterial() { mixin(MGPC!("PhysicalMaterial", 356)()); }
			PhysicalMaterial BlackPhysicalMaterial() { mixin(MGPC!("PhysicalMaterial", 352)()); }
			int PhysMaterialMaskUVChannel() { mixin(MGPC!("int", 348)()); }
			Texture2D PhysMaterialMask() { mixin(MGPC!("Texture2D", 344)()); }
			MaterialInterface Parent() { mixin(MGPC!("MaterialInterface", 340)()); }
			PhysicalMaterial PhysMaterial() { mixin(MGPC!("PhysicalMaterial", 336)()); }
		}
		bool bNeedsMaterialFlattening() { mixin(MGBPC!(360, 0x8)()); }
		bool bNeedsMaterialFlattening(bool val) { mixin(MSBPC!(360, 0x8)()); }
		bool ReentrantFlag() { mixin(MGBPC!(360, 0x4)()); }
		bool ReentrantFlag(bool val) { mixin(MSBPC!(360, 0x4)()); }
		bool bStaticPermutationDirty() { mixin(MGBPC!(360, 0x2)()); }
		bool bStaticPermutationDirty(bool val) { mixin(MSBPC!(360, 0x2)()); }
		bool bHasStaticPermutationResource() { mixin(MGBPC!(360, 0x1)()); }
		bool bHasStaticPermutationResource(bool val) { mixin(MSBPC!(360, 0x1)()); }
	}
final:
	void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetParent, params.ptr, cast(void*)0);
	}
	void SetVectorParameterValue(ScriptName ParameterName, ref in UObject.LinearColor Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = cast(UObject.LinearColor)Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameterValue, params.ptr, cast(void*)0);
	}
	void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarParameterValue, params.ptr, cast(void*)0);
	}
	void SetScalarCurveParameterValue(ScriptName ParameterName, ref in UObject.InterpCurveFloat Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = cast(UObject.InterpCurveFloat)Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScalarCurveParameterValue, params.ptr, cast(void*)0);
	}
	void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTextureParameterValue, params.ptr, cast(void*)0);
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
	bool IsInMapOrTransientPackage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInMapOrTransientPackage, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

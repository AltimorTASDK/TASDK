module UnrealScript.Engine.MaterialInstance;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialInstance")); }
	private static __gshared MaterialInstance mDefaultProperties;
	@property final static MaterialInstance DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialInstance)("MaterialInstance Engine.Default__MaterialInstance")); }
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
			ScriptFunction SetParent() { return mSetParent ? mSetParent : (mSetParent = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetParent")); }
			ScriptFunction SetVectorParameterValue() { return mSetVectorParameterValue ? mSetVectorParameterValue : (mSetVectorParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetVectorParameterValue")); }
			ScriptFunction SetScalarParameterValue() { return mSetScalarParameterValue ? mSetScalarParameterValue : (mSetScalarParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetScalarParameterValue")); }
			ScriptFunction SetScalarCurveParameterValue() { return mSetScalarCurveParameterValue ? mSetScalarCurveParameterValue : (mSetScalarCurveParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetScalarCurveParameterValue")); }
			ScriptFunction SetTextureParameterValue() { return mSetTextureParameterValue ? mSetTextureParameterValue : (mSetTextureParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetTextureParameterValue")); }
			ScriptFunction SetFontParameterValue() { return mSetFontParameterValue ? mSetFontParameterValue : (mSetFontParameterValue = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.SetFontParameterValue")); }
			ScriptFunction ClearParameterValues() { return mClearParameterValues ? mClearParameterValues : (mClearParameterValues = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.ClearParameterValues")); }
			ScriptFunction IsInMapOrTransientPackage() { return mIsInMapOrTransientPackage ? mIsInMapOrTransientPackage : (mIsInMapOrTransientPackage = ScriptObject.Find!(ScriptFunction)("Function Engine.MaterialInstance.IsInMapOrTransientPackage")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Texture) ReferencedTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)cast(void*)this + 392); }
			ScriptArray!(UObject.Guid) ReferencedTextureGuids() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 404); }
			UObject.Guid ParentLightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 416); }
			UObject.Pointer Resources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 380); }
			UObject.Pointer StaticPermutationResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 372); }
			UObject.Pointer StaticParameters() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 364); }
			PhysicalMaterial WhitePhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 356); }
			PhysicalMaterial BlackPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 352); }
			int PhysMaterialMaskUVChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
			Texture2D PhysMaterialMask() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 344); }
			MaterialInterface Parent() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 340); }
			PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 336); }
		}
		bool bNeedsMaterialFlattening() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x8) != 0; }
		bool bNeedsMaterialFlattening(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x8; } return val; }
		bool ReentrantFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x4) != 0; }
		bool ReentrantFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x4; } return val; }
		bool bStaticPermutationDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x2) != 0; }
		bool bStaticPermutationDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x2; } return val; }
		bool bHasStaticPermutationResource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bHasStaticPermutationResource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
	}
final:
	void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetParent, params.ptr, cast(void*)0);
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

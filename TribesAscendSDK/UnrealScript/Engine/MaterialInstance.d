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
	public @property final auto ref ScriptArray!(Texture) ReferencedTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptArray!(UObject.Guid) ReferencedTextureGuids() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref UObject.Guid ParentLightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref UObject.Pointer Resources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref UObject.Pointer StaticPermutationResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref UObject.Pointer StaticParameters() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 364); }
	public @property final bool bNeedsMaterialFlattening() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x8) != 0; }
	public @property final bool bNeedsMaterialFlattening(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x8; } return val; }
	public @property final bool ReentrantFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x4) != 0; }
	public @property final bool ReentrantFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x4; } return val; }
	public @property final bool bStaticPermutationDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x2) != 0; }
	public @property final bool bStaticPermutationDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x2; } return val; }
	public @property final bool bHasStaticPermutationResource() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
	public @property final bool bHasStaticPermutationResource(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
	public @property final auto ref PhysicalMaterial WhitePhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref PhysicalMaterial BlackPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref int PhysMaterialMaskUVChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Texture2D PhysMaterialMask() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref MaterialInterface Parent() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 336); }
	final void SetParent(MaterialInterface NewParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = NewParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19789], params.ptr, cast(void*)0);
	}
	final void SetVectorParameterValue(ScriptName ParameterName, UObject.LinearColor* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19791], params.ptr, cast(void*)0);
		*Value = *cast(UObject.LinearColor*)&params[8];
	}
	final void SetScalarParameterValue(ScriptName ParameterName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19794], params.ptr, cast(void*)0);
	}
	final void SetScalarCurveParameterValue(ScriptName ParameterName, UObject.InterpCurveFloat* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.InterpCurveFloat*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19797], params.ptr, cast(void*)0);
		*Value = *cast(UObject.InterpCurveFloat*)&params[8];
	}
	final void SetTextureParameterValue(ScriptName ParameterName, Texture Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Texture*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19800], params.ptr, cast(void*)0);
	}
	final void SetFontParameterValue(ScriptName ParameterName, Font FontValue, int FontPage)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Font*)&params[8] = FontValue;
		*cast(int*)&params[12] = FontPage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19803], params.ptr, cast(void*)0);
	}
	final void ClearParameterValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19807], cast(void*)0, cast(void*)0);
	}
	final bool IsInMapOrTransientPackage()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19808], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}

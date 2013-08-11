module UnrealScript.Engine.MeshComponent;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MeshComponent : PrimitiveComponent
{
	public @property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 488); }
	final MaterialInterface GetMaterial(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6923], params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	final void SetMaterial(int ElementIndex, MaterialInterface Material)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		*cast(MaterialInterface*)&params[4] = Material;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6926], params.ptr, cast(void*)0);
	}
	final int GetNumElements()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6929], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void PrestreamTextures(float Seconds, bool bPrioritizeCharacterTextures, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(bool*)&params[4] = bPrioritizeCharacterTextures;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6931], params.ptr, cast(void*)0);
	}
	final MaterialInstanceConstant CreateAndSetMaterialInstanceConstant(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6935], params.ptr, cast(void*)0);
		return *cast(MaterialInstanceConstant*)&params[4];
	}
	final MaterialInstanceTimeVarying CreateAndSetMaterialInstanceTimeVarying(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6939], params.ptr, cast(void*)0);
		return *cast(MaterialInstanceTimeVarying*)&params[4];
	}
}

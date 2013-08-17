module UnrealScript.Engine.MeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface MeshComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MeshComponent")()); }
	private static __gshared MeshComponent mDefaultProperties;
	@property final static MeshComponent DefaultProperties() { mixin(MGDPC!(MeshComponent, "MeshComponent Engine.Default__MeshComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMaterial;
			ScriptFunction mSetMaterial;
			ScriptFunction mGetNumElements;
			ScriptFunction mPrestreamTextures;
			ScriptFunction mCreateAndSetMaterialInstanceConstant;
			ScriptFunction mCreateAndSetMaterialInstanceTimeVarying;
		}
		public @property static final
		{
			ScriptFunction GetMaterial() { mixin(MGF!("mGetMaterial", "Function Engine.MeshComponent.GetMaterial")()); }
			ScriptFunction SetMaterial() { mixin(MGF!("mSetMaterial", "Function Engine.MeshComponent.SetMaterial")()); }
			ScriptFunction GetNumElements() { mixin(MGF!("mGetNumElements", "Function Engine.MeshComponent.GetNumElements")()); }
			ScriptFunction PrestreamTextures() { mixin(MGF!("mPrestreamTextures", "Function Engine.MeshComponent.PrestreamTextures")()); }
			ScriptFunction CreateAndSetMaterialInstanceConstant() { mixin(MGF!("mCreateAndSetMaterialInstanceConstant", "Function Engine.MeshComponent.CreateAndSetMaterialInstanceConstant")()); }
			ScriptFunction CreateAndSetMaterialInstanceTimeVarying() { mixin(MGF!("mCreateAndSetMaterialInstanceTimeVarying", "Function Engine.MeshComponent.CreateAndSetMaterialInstanceTimeVarying")()); }
		}
	}
	@property final auto ref ScriptArray!(MaterialInterface) Materials() { mixin(MGPC!(ScriptArray!(MaterialInterface), 488)()); }
final:
	MaterialInterface GetMaterial(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaterial, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	void SetMaterial(int ElementIndex, MaterialInterface pMaterial)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		*cast(MaterialInterface*)&params[4] = pMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMaterial, params.ptr, cast(void*)0);
	}
	int GetNumElements()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumElements, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void PrestreamTextures(float Seconds, bool bPrioritizeCharacterTextures, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(bool*)&params[4] = bPrioritizeCharacterTextures;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrestreamTextures, params.ptr, cast(void*)0);
	}
	MaterialInstanceConstant CreateAndSetMaterialInstanceConstant(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAndSetMaterialInstanceConstant, params.ptr, cast(void*)0);
		return *cast(MaterialInstanceConstant*)&params[4];
	}
	MaterialInstanceTimeVarying CreateAndSetMaterialInstanceTimeVarying(int ElementIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ElementIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAndSetMaterialInstanceTimeVarying, params.ptr, cast(void*)0);
		return *cast(MaterialInstanceTimeVarying*)&params[4];
	}
}

module UnrealScript.Engine.FracturedBaseComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface FracturedBaseComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FracturedBaseComponent")); }
	private static __gshared FracturedBaseComponent mDefaultProperties;
	@property final static FracturedBaseComponent DefaultProperties() { mixin(MGDPC("FracturedBaseComponent", "FracturedBaseComponent Engine.Default__FracturedBaseComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetStaticMesh;
			ScriptFunction mGetVisibleFragments;
			ScriptFunction mIsFragmentVisible;
			ScriptFunction mGetNumFragments;
			ScriptFunction mGetNumVisibleFragments;
		}
		public @property static final
		{
			ScriptFunction SetStaticMesh() { mixin(MGF("mSetStaticMesh", "Function Engine.FracturedBaseComponent.SetStaticMesh")); }
			ScriptFunction GetVisibleFragments() { mixin(MGF("mGetVisibleFragments", "Function Engine.FracturedBaseComponent.GetVisibleFragments")); }
			ScriptFunction IsFragmentVisible() { mixin(MGF("mIsFragmentVisible", "Function Engine.FracturedBaseComponent.IsFragmentVisible")); }
			ScriptFunction GetNumFragments() { mixin(MGF("mGetNumFragments", "Function Engine.FracturedBaseComponent.GetNumFragments")); }
			ScriptFunction GetNumVisibleFragments() { mixin(MGF("mGetNumVisibleFragments", "Function Engine.FracturedBaseComponent.GetNumVisibleFragments")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) VisibleFragments() { mixin(MGPC("ScriptArray!(ubyte)", 616)); }
			int bResetStaticMesh() { mixin(MGPC("int", 636)); }
			int NumResourceIndices() { mixin(MGPC("int", 632)); }
			UObject.RenderCommandFence_Mirror ReleaseResourcesFence() { mixin(MGPC("UObject.RenderCommandFence_Mirror", 612)); }
			UObject.Pointer ComponentBaseResources() { mixin(MGPC("UObject.Pointer", 608)); }
		}
		bool bUseDynamicIBWithHiddenFragments() { mixin(MGBPC(628, 0x10)); }
		bool bUseDynamicIBWithHiddenFragments(bool val) { mixin(MSBPC(628, 0x10)); }
		bool bUseDynamicIndexBuffer() { mixin(MGBPC(628, 0x8)); }
		bool bUseDynamicIndexBuffer(bool val) { mixin(MSBPC(628, 0x8)); }
		bool bInitialVisibilityValue() { mixin(MGBPC(628, 0x4)); }
		bool bInitialVisibilityValue(bool val) { mixin(MSBPC(628, 0x4)); }
		bool bVisibilityReset() { mixin(MGBPC(628, 0x2)); }
		bool bVisibilityReset(bool val) { mixin(MSBPC(628, 0x2)); }
		bool bVisibilityHasChanged() { mixin(MGBPC(628, 0x1)); }
		bool bVisibilityHasChanged(bool val) { mixin(MSBPC(628, 0x1)); }
	}
final:
	bool SetStaticMesh(StaticMesh NewMesh, bool* bForce = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		if (bForce !is null)
			*cast(bool*)&params[4] = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStaticMesh, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptArray!(ubyte) GetVisibleFragments()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVisibleFragments, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	bool IsFragmentVisible(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFragmentVisible, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetNumFragments()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumFragments, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetNumVisibleFragments()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumVisibleFragments, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

module UnrealScript.Engine.FracturedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface FracturedStaticMeshComponent : FracturedBaseComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FracturedStaticMeshComponent")); }
	private static __gshared FracturedStaticMeshComponent mDefaultProperties;
	@property final static FracturedStaticMeshComponent DefaultProperties() { mixin(MGDPC("FracturedStaticMeshComponent", "FracturedStaticMeshComponent Engine.Default__FracturedStaticMeshComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetVisibleFragments;
			ScriptFunction mIsFragmentDestroyable;
			ScriptFunction mIsRootFragment;
			ScriptFunction mIsNoPhysFragment;
			ScriptFunction mGetFragmentBox;
			ScriptFunction mGetFragmentAverageExteriorNormal;
			ScriptFunction mGetCoreFragmentIndex;
			ScriptFunction mGetFragmentGroups;
			ScriptFunction mGetBoundaryHiddenFragments;
			ScriptFunction mRecreatePhysState;
			ScriptFunction mGetFracturedMeshPhysMaterial;
		}
		public @property static final
		{
			ScriptFunction SetVisibleFragments() { mixin(MGF("mSetVisibleFragments", "Function Engine.FracturedStaticMeshComponent.SetVisibleFragments")); }
			ScriptFunction IsFragmentDestroyable() { mixin(MGF("mIsFragmentDestroyable", "Function Engine.FracturedStaticMeshComponent.IsFragmentDestroyable")); }
			ScriptFunction IsRootFragment() { mixin(MGF("mIsRootFragment", "Function Engine.FracturedStaticMeshComponent.IsRootFragment")); }
			ScriptFunction IsNoPhysFragment() { mixin(MGF("mIsNoPhysFragment", "Function Engine.FracturedStaticMeshComponent.IsNoPhysFragment")); }
			ScriptFunction GetFragmentBox() { mixin(MGF("mGetFragmentBox", "Function Engine.FracturedStaticMeshComponent.GetFragmentBox")); }
			ScriptFunction GetFragmentAverageExteriorNormal() { mixin(MGF("mGetFragmentAverageExteriorNormal", "Function Engine.FracturedStaticMeshComponent.GetFragmentAverageExteriorNormal")); }
			ScriptFunction GetCoreFragmentIndex() { mixin(MGF("mGetCoreFragmentIndex", "Function Engine.FracturedStaticMeshComponent.GetCoreFragmentIndex")); }
			ScriptFunction GetFragmentGroups() { mixin(MGF("mGetFragmentGroups", "Function Engine.FracturedStaticMeshComponent.GetFragmentGroups")); }
			ScriptFunction GetBoundaryHiddenFragments() { mixin(MGF("mGetBoundaryHiddenFragments", "Function Engine.FracturedStaticMeshComponent.GetBoundaryHiddenFragments")); }
			ScriptFunction RecreatePhysState() { mixin(MGF("mRecreatePhysState", "Function Engine.FracturedStaticMeshComponent.RecreatePhysState")); }
			ScriptFunction GetFracturedMeshPhysMaterial() { mixin(MGF("mGetFracturedMeshPhysMaterial", "Function Engine.FracturedStaticMeshComponent.GetFracturedMeshPhysMaterial")); }
		}
	}
	struct FragmentGroup
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.FracturedStaticMeshComponent.FragmentGroup")); }
		@property final
		{
			@property final auto ref ScriptArray!(int) FragmentIndices() { mixin(MGPS("ScriptArray!(int)", 0)); }
			bool bGroupIsRooted() { mixin(MGBPS(12, 0x1)); }
			bool bGroupIsRooted(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) FragmentNeighborsVisible() { mixin(MGPC("ScriptArray!(ubyte)", 640)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkinnedComponent'!
			float FragmentBoundsMinZ() { mixin(MGPC("float", 696)); }
			float FragmentBoundsMaxZ() { mixin(MGPC("float", 692)); }
			MaterialInterface LoseChunkOutsideMaterialOverride() { mixin(MGPC("MaterialInterface", 688)); }
			float TopBottomFragmentDistThreshold() { mixin(MGPC("float", 684)); }
			UObject.Box VisibleBox() { mixin(MGPC("UObject.Box", 652)); }
		}
		bool bBottomFragmentsRootNonDestroyable() { mixin(MGBPC(680, 0x8)); }
		bool bBottomFragmentsRootNonDestroyable(bool val) { mixin(MSBPC(680, 0x8)); }
		bool bTopFragmentsRootNonDestroyable() { mixin(MGBPC(680, 0x4)); }
		bool bTopFragmentsRootNonDestroyable(bool val) { mixin(MSBPC(680, 0x4)); }
		bool bUseVisibleVertsForBounds() { mixin(MGBPC(680, 0x2)); }
		bool bUseVisibleVertsForBounds(bool val) { mixin(MSBPC(680, 0x2)); }
		bool bUseSkinnedRendering() { mixin(MGBPC(680, 0x1)); }
		bool bUseSkinnedRendering(bool val) { mixin(MSBPC(680, 0x1)); }
	}
final:
	void SetVisibleFragments(ScriptArray!(ubyte) VisibilityFactors)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = VisibilityFactors;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVisibleFragments, params.ptr, cast(void*)0);
	}
	bool IsFragmentDestroyable(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFragmentDestroyable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsRootFragment(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRootFragment, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsNoPhysFragment(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsNoPhysFragment, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	UObject.Box GetFragmentBox(int FragmentIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFragmentBox, params.ptr, cast(void*)0);
		return *cast(UObject.Box*)&params[4];
	}
	Vector GetFragmentAverageExteriorNormal(int FragmentIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFragmentAverageExteriorNormal, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	int GetCoreFragmentIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCoreFragmentIndex, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptArray!(FracturedStaticMeshComponent.FragmentGroup) GetFragmentGroups(ScriptArray!(int) IgnoreFragments, float MinConnectionArea)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = IgnoreFragments;
		*cast(float*)&params[12] = MinConnectionArea;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFragmentGroups, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(FracturedStaticMeshComponent.FragmentGroup)*)&params[16];
	}
	ScriptArray!(int) GetBoundaryHiddenFragments(ScriptArray!(int) AdditionalVisibleFragments)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = AdditionalVisibleFragments;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundaryHiddenFragments, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(int)*)&params[12];
	}
	void RecreatePhysState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecreatePhysState, cast(void*)0, cast(void*)0);
	}
	PhysicalMaterial GetFracturedMeshPhysMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFracturedMeshPhysMaterial, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
}

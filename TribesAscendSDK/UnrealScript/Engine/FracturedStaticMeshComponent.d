module UnrealScript.Engine.FracturedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface FracturedStaticMeshComponent : FracturedBaseComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FracturedStaticMeshComponent")); }
	private static __gshared FracturedStaticMeshComponent mDefaultProperties;
	@property final static FracturedStaticMeshComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FracturedStaticMeshComponent)("FracturedStaticMeshComponent Engine.Default__FracturedStaticMeshComponent")); }
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
			ScriptFunction SetVisibleFragments() { return mSetVisibleFragments ? mSetVisibleFragments : (mSetVisibleFragments = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.SetVisibleFragments")); }
			ScriptFunction IsFragmentDestroyable() { return mIsFragmentDestroyable ? mIsFragmentDestroyable : (mIsFragmentDestroyable = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.IsFragmentDestroyable")); }
			ScriptFunction IsRootFragment() { return mIsRootFragment ? mIsRootFragment : (mIsRootFragment = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.IsRootFragment")); }
			ScriptFunction IsNoPhysFragment() { return mIsNoPhysFragment ? mIsNoPhysFragment : (mIsNoPhysFragment = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.IsNoPhysFragment")); }
			ScriptFunction GetFragmentBox() { return mGetFragmentBox ? mGetFragmentBox : (mGetFragmentBox = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetFragmentBox")); }
			ScriptFunction GetFragmentAverageExteriorNormal() { return mGetFragmentAverageExteriorNormal ? mGetFragmentAverageExteriorNormal : (mGetFragmentAverageExteriorNormal = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetFragmentAverageExteriorNormal")); }
			ScriptFunction GetCoreFragmentIndex() { return mGetCoreFragmentIndex ? mGetCoreFragmentIndex : (mGetCoreFragmentIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetCoreFragmentIndex")); }
			ScriptFunction GetFragmentGroups() { return mGetFragmentGroups ? mGetFragmentGroups : (mGetFragmentGroups = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetFragmentGroups")); }
			ScriptFunction GetBoundaryHiddenFragments() { return mGetBoundaryHiddenFragments ? mGetBoundaryHiddenFragments : (mGetBoundaryHiddenFragments = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetBoundaryHiddenFragments")); }
			ScriptFunction RecreatePhysState() { return mRecreatePhysState ? mRecreatePhysState : (mRecreatePhysState = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.RecreatePhysState")); }
			ScriptFunction GetFracturedMeshPhysMaterial() { return mGetFracturedMeshPhysMaterial ? mGetFracturedMeshPhysMaterial : (mGetFracturedMeshPhysMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedStaticMeshComponent.GetFracturedMeshPhysMaterial")); }
		}
	}
	struct FragmentGroup
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.FracturedStaticMeshComponent.FragmentGroup")); }
		@property final
		{
			@property final auto ref ScriptArray!(int) FragmentIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
			bool bGroupIsRooted() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bGroupIsRooted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) FragmentNeighborsVisible() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 640); }
			float FragmentBoundsMinZ() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float FragmentBoundsMaxZ() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			MaterialInterface LoseChunkOutsideMaterialOverride() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 688); }
			float TopBottomFragmentDistThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			UObject.Box VisibleBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 652); }
		}
		bool bBottomFragmentsRootNonDestroyable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x8) != 0; }
		bool bBottomFragmentsRootNonDestroyable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x8; } return val; }
		bool bTopFragmentsRootNonDestroyable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x4) != 0; }
		bool bTopFragmentsRootNonDestroyable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x4; } return val; }
		bool bUseVisibleVertsForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x2) != 0; }
		bool bUseVisibleVertsForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x2; } return val; }
		bool bUseSkinnedRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x1) != 0; }
		bool bUseSkinnedRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x1; } return val; }
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

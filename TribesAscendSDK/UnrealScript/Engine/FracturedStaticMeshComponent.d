module UnrealScript.Engine.FracturedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FracturedBaseComponent;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface FracturedStaticMeshComponent : FracturedBaseComponent
{
	struct FragmentGroup
	{
		public @property final auto ref ScriptArray!(int) FragmentIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
		private ubyte __FragmentIndices[12];
		public @property final bool bGroupIsRooted() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bGroupIsRooted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bGroupIsRooted[4];
	}
	public @property final auto ref ScriptArray!(ubyte) FragmentNeighborsVisible() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref float FragmentBoundsMinZ() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref float FragmentBoundsMaxZ() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref MaterialInterface LoseChunkOutsideMaterialOverride() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref float TopBottomFragmentDistThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
	public @property final bool bBottomFragmentsRootNonDestroyable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x8) != 0; }
	public @property final bool bBottomFragmentsRootNonDestroyable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x8; } return val; }
	public @property final bool bTopFragmentsRootNonDestroyable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x4) != 0; }
	public @property final bool bTopFragmentsRootNonDestroyable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x4; } return val; }
	public @property final bool bUseVisibleVertsForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x2) != 0; }
	public @property final bool bUseVisibleVertsForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x2; } return val; }
	public @property final bool bUseSkinnedRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 680) & 0x1) != 0; }
	public @property final bool bUseSkinnedRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 680) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 680) &= ~0x1; } return val; }
	public @property final auto ref UObject.Box VisibleBox() { return *cast(UObject.Box*)(cast(size_t)cast(void*)this + 652); }
	final void SetVisibleFragments(ScriptArray!(ubyte) VisibilityFactors)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = VisibilityFactors;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16040], params.ptr, cast(void*)0);
	}
	final bool IsFragmentDestroyable(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16043], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsRootFragment(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16046], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsNoPhysFragment(int FragmentIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16049], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final UObject.Box GetFragmentBox(int FragmentIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16052], params.ptr, cast(void*)0);
		return *cast(UObject.Box*)&params[4];
	}
	final Vector GetFragmentAverageExteriorNormal(int FragmentIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = FragmentIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16055], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final int GetCoreFragmentIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16058], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final ScriptArray!(FracturedStaticMeshComponent.FragmentGroup) GetFragmentGroups(ScriptArray!(int) IgnoreFragments, float MinConnectionArea)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = IgnoreFragments;
		*cast(float*)&params[12] = MinConnectionArea;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16060], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(FracturedStaticMeshComponent.FragmentGroup)*)&params[16];
	}
	final ScriptArray!(int) GetBoundaryHiddenFragments(ScriptArray!(int) AdditionalVisibleFragments)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = AdditionalVisibleFragments;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16066], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(int)*)&params[12];
	}
	final void RecreatePhysState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16071], cast(void*)0, cast(void*)0);
	}
	final PhysicalMaterial GetFracturedMeshPhysMaterial()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16072], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterial*)params.ptr;
	}
}

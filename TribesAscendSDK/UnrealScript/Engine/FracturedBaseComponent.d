module UnrealScript.Engine.FracturedBaseComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface FracturedBaseComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FracturedBaseComponent")); }
	private static __gshared FracturedBaseComponent mDefaultProperties;
	@property final static FracturedBaseComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FracturedBaseComponent)("FracturedBaseComponent Engine.Default__FracturedBaseComponent")); }
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
			ScriptFunction SetStaticMesh() { return mSetStaticMesh ? mSetStaticMesh : (mSetStaticMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedBaseComponent.SetStaticMesh")); }
			ScriptFunction GetVisibleFragments() { return mGetVisibleFragments ? mGetVisibleFragments : (mGetVisibleFragments = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedBaseComponent.GetVisibleFragments")); }
			ScriptFunction IsFragmentVisible() { return mIsFragmentVisible ? mIsFragmentVisible : (mIsFragmentVisible = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedBaseComponent.IsFragmentVisible")); }
			ScriptFunction GetNumFragments() { return mGetNumFragments ? mGetNumFragments : (mGetNumFragments = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedBaseComponent.GetNumFragments")); }
			ScriptFunction GetNumVisibleFragments() { return mGetNumVisibleFragments ? mGetNumVisibleFragments : (mGetNumVisibleFragments = ScriptObject.Find!(ScriptFunction)("Function Engine.FracturedBaseComponent.GetNumVisibleFragments")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) VisibleFragments() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 616); }
			int bResetStaticMesh() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			int NumResourceIndices() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
			UObject.RenderCommandFence_Mirror ReleaseResourcesFence() { return *cast(UObject.RenderCommandFence_Mirror*)(cast(size_t)cast(void*)this + 612); }
			UObject.Pointer ComponentBaseResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 608); }
		}
		bool bUseDynamicIBWithHiddenFragments() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x10) != 0; }
		bool bUseDynamicIBWithHiddenFragments(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x10; } return val; }
		bool bUseDynamicIndexBuffer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x8) != 0; }
		bool bUseDynamicIndexBuffer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x8; } return val; }
		bool bInitialVisibilityValue() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x4) != 0; }
		bool bInitialVisibilityValue(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x4; } return val; }
		bool bVisibilityReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x2) != 0; }
		bool bVisibilityReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x2; } return val; }
		bool bVisibilityHasChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 628) & 0x1) != 0; }
		bool bVisibilityHasChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 628) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 628) &= ~0x1; } return val; }
	}
final:
	bool SetStaticMesh(StaticMesh NewMesh, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		*cast(bool*)&params[4] = bForce;
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

module UnrealScript.Engine.Pylon;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Volume;

extern(C++) interface Pylon : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Pylon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPylonStatusChange;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetEnabled;
			ScriptFunction mIsEnabled;
			ScriptFunction mOnToggle;
			ScriptFunction mCanReachPylon;
		}
		public @property static final
		{
			ScriptFunction OnPylonStatusChange() { return mOnPylonStatusChange ? mOnPylonStatusChange : (mOnPylonStatusChange = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.OnPylonStatusChange")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.PostBeginPlay")); }
			ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.SetEnabled")); }
			ScriptFunction IsEnabled() { return mIsEnabled ? mIsEnabled : (mIsEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.IsEnabled")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.OnToggle")); }
			ScriptFunction CanReachPylon() { return mCanReachPylon ? mCanReachPylon : (mCanReachPylon = ScriptObject.Find!(ScriptFunction)("Function Engine.Pylon.CanReachPylon")); }
		}
	}
	enum ENavMeshEdgeType : ubyte
	{
		NAVEDGE_Normal = 0,
		NAVEDGE_Mantle = 1,
		NAVEDGE_Coverslip = 2,
		NAVEDGE_SwatTurn = 3,
		NAVEDGE_DropDown = 4,
		NAVEDGE_PathObject = 5,
		NAVEDGE_BackRefDummy = 6,
		NAVEDGE_Jump = 7,
		NAVEDGE_MAX = 8,
	}
	struct PolyReference
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Pylon.PolyReference")); }
		@property final auto ref
		{
			int PolyId() { return *cast(int*)(cast(size_t)&this + 20); }
			Actor.ActorReference OwningPylon() { return *cast(Actor.ActorReference*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Vector) NextPassSeedList() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 716); }
			ScriptArray!(Volume) ExpansionVolumes() { return *cast(ScriptArray!(Volume)*)(cast(size_t)cast(void*)this + 744); }
			ScriptArray!(Pylon) ImposterPylons() { return *cast(ScriptArray!(Pylon)*)(cast(size_t)cast(void*)this + 792); }
			ScriptArray!(Actor) OnBuild_DisableCollisionForThese() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 804); }
			ScriptArray!(Actor) OnBuild_EnableCollisionForThese() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 816); }
			int DebugEdgeCount() { return *cast(int*)(cast(size_t)cast(void*)this + 828); }
			Vector ExpansionSphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 772); }
			float MaxExpansionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			float ExpansionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
			Pylon NextPylon() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 740); }
			UObject.Pointer OctreeIWasAddedTo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 736); }
			UObject.OctreeElementId OctreeId() { return *cast(UObject.OctreeElementId*)(cast(size_t)cast(void*)this + 728); }
			UObject.Pointer PathObjectsThatAffectThisPylon() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
			UObject.Pointer WorkingSetPtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 708); }
			UObject.Pointer DynamicObstacleMesh() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 704); }
			UObject.Pointer ObstacleMesh() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 700); }
			UObject.Pointer NavMeshPtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 696); }
			UObject.Pointer VfTable_IEditorLinkSelectionInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
		}
		bool bForceObstacleMeshCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x400) != 0; }
		bool bForceObstacleMeshCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x400; } return val; }
		bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x200) != 0; }
		bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x200; } return val; }
		bool bBuildThisPylon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x100) != 0; }
		bool bBuildThisPylon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x100; } return val; }
		bool bDrawObstacleSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x80) != 0; }
		bool bDrawObstacleSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x80; } return val; }
		bool bDrawWalkableSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x40) != 0; }
		bool bDrawWalkableSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x40; } return val; }
		bool bRenderInShowPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x20) != 0; }
		bool bRenderInShowPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x20; } return val; }
		bool bDrawPolyBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x10) != 0; }
		bool bDrawPolyBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x10; } return val; }
		bool bDrawEdgePolys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x8) != 0; }
		bool bDrawEdgePolys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x8; } return val; }
		bool bNeedsCostCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x4) != 0; }
		bool bNeedsCostCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x4; } return val; }
		bool bUseExpansionSphereOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x2) != 0; }
		bool bUseExpansionSphereOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x2; } return val; }
		bool bImportedMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x1) != 0; }
		bool bImportedMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x1; } return val; }
	}
final:
	void OnPylonStatusChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPylonStatusChange, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	bool CanReachPylon(Pylon DestPylon, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pylon*)params.ptr = DestPylon;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanReachPylon, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

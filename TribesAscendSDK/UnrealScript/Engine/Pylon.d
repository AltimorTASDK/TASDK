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
		public @property final auto ref int PolyId() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __PolyId[4];
		public @property final auto ref Actor.ActorReference OwningPylon() { return *cast(Actor.ActorReference*)(cast(size_t)&this + 0); }
		private ubyte __OwningPylon[20];
	}
	public @property final auto ref ScriptArray!(Vector) NextPassSeedList() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref ScriptArray!(Volume) ExpansionVolumes() { return *cast(ScriptArray!(Volume)*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref ScriptArray!(Pylon) ImposterPylons() { return *cast(ScriptArray!(Pylon)*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref ScriptArray!(Actor) OnBuild_DisableCollisionForThese() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref ScriptArray!(Actor) OnBuild_EnableCollisionForThese() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref int DebugEdgeCount() { return *cast(int*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref Vector ExpansionSphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 772); }
	public @property final bool bForceObstacleMeshCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x400) != 0; }
	public @property final bool bForceObstacleMeshCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x400; } return val; }
	public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x200) != 0; }
	public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x200; } return val; }
	public @property final bool bBuildThisPylon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x100) != 0; }
	public @property final bool bBuildThisPylon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x100; } return val; }
	public @property final bool bDrawObstacleSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x80) != 0; }
	public @property final bool bDrawObstacleSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x80; } return val; }
	public @property final bool bDrawWalkableSurface() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x40) != 0; }
	public @property final bool bDrawWalkableSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x40; } return val; }
	public @property final bool bRenderInShowPaths() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x20) != 0; }
	public @property final bool bRenderInShowPaths(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x20; } return val; }
	public @property final bool bDrawPolyBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x10) != 0; }
	public @property final bool bDrawPolyBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x10; } return val; }
	public @property final bool bDrawEdgePolys() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x8) != 0; }
	public @property final bool bDrawEdgePolys(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x8; } return val; }
	public @property final bool bNeedsCostCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x4) != 0; }
	public @property final bool bNeedsCostCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x4; } return val; }
	public @property final bool bUseExpansionSphereOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x2) != 0; }
	public @property final bool bUseExpansionSphereOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x2; } return val; }
	public @property final bool bImportedMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 768) & 0x1) != 0; }
	public @property final bool bImportedMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 768) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 768) &= ~0x1; } return val; }
	public @property final auto ref float MaxExpansionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref float ExpansionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref Pylon NextPylon() { return *cast(Pylon*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref UObject.Pointer OctreeIWasAddedTo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref UObject.OctreeElementId OctreeId() { return *cast(UObject.OctreeElementId*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref UObject.Pointer PathObjectsThatAffectThisPylon() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref UObject.Pointer WorkingSetPtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref UObject.Pointer DynamicObstacleMesh() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref UObject.Pointer ObstacleMesh() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref UObject.Pointer NavMeshPtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref UObject.Pointer VfTable_IEditorLinkSelectionInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
	final void OnPylonStatusChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9967], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9968], cast(void*)0, cast(void*)0);
	}
	final void SetEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9969], params.ptr, cast(void*)0);
	}
	final bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9971], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9973], params.ptr, cast(void*)0);
	}
	final bool CanReachPylon(Pylon DestPylon, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pylon*)params.ptr = DestPylon;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9975], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

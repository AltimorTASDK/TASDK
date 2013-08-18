module UnrealScript.Engine.Pylon;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Pylon")); }
	private static __gshared Pylon mDefaultProperties;
	@property final static Pylon DefaultProperties() { mixin(MGDPC("Pylon", "Pylon Engine.Default__Pylon")); }
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
			ScriptFunction OnPylonStatusChange() { mixin(MGF("mOnPylonStatusChange", "Function Engine.Pylon.OnPylonStatusChange")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.Pylon.PostBeginPlay")); }
			ScriptFunction SetEnabled() { mixin(MGF("mSetEnabled", "Function Engine.Pylon.SetEnabled")); }
			ScriptFunction IsEnabled() { mixin(MGF("mIsEnabled", "Function Engine.Pylon.IsEnabled")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.Pylon.OnToggle")); }
			ScriptFunction CanReachPylon() { mixin(MGF("mCanReachPylon", "Function Engine.Pylon.CanReachPylon")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Pylon.PolyReference")); }
		@property final auto ref
		{
			int PolyId() { mixin(MGPS("int", 20)); }
			Actor.ActorReference OwningPylon() { mixin(MGPS("Actor.ActorReference", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Vector) NextPassSeedList() { mixin(MGPC("ScriptArray!(Vector)", 716)); }
			ScriptArray!(Volume) ExpansionVolumes() { mixin(MGPC("ScriptArray!(Volume)", 744)); }
			ScriptArray!(Pylon) ImposterPylons() { mixin(MGPC("ScriptArray!(Pylon)", 792)); }
			ScriptArray!(Actor) OnBuild_DisableCollisionForThese() { mixin(MGPC("ScriptArray!(Actor)", 804)); }
			ScriptArray!(Actor) OnBuild_EnableCollisionForThese() { mixin(MGPC("ScriptArray!(Actor)", 816)); }
			int DebugEdgeCount() { mixin(MGPC("int", 828)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BrokenSprite'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderingComp'!
			Vector ExpansionSphereCenter() { mixin(MGPC("Vector", 772)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PylonRadiusPreview'!
			float MaxExpansionRadius() { mixin(MGPC("float", 760)); }
			float ExpansionRadius() { mixin(MGPC("float", 756)); }
			Pylon NextPylon() { mixin(MGPC("Pylon", 740)); }
			Pointer OctreeIWasAddedTo() { mixin(MGPC("Pointer", 736)); }
			UObject.OctreeElementId OctreeId() { mixin(MGPC("UObject.OctreeElementId", 728)); }
			Pointer PathObjectsThatAffectThisPylon() { mixin(MGPC("Pointer", 712)); }
			Pointer WorkingSetPtr() { mixin(MGPC("Pointer", 708)); }
			Pointer DynamicObstacleMesh() { mixin(MGPC("Pointer", 704)); }
			Pointer ObstacleMesh() { mixin(MGPC("Pointer", 700)); }
			Pointer NavMeshPtr() { mixin(MGPC("Pointer", 696)); }
			Pointer VfTable_IEditorLinkSelectionInterface() { mixin(MGPC("Pointer", 692)); }
		}
		bool bForceObstacleMeshCollision() { mixin(MGBPC(768, 0x400)); }
		bool bForceObstacleMeshCollision(bool val) { mixin(MSBPC(768, 0x400)); }
		bool bDisabled() { mixin(MGBPC(768, 0x200)); }
		bool bDisabled(bool val) { mixin(MSBPC(768, 0x200)); }
		bool bBuildThisPylon() { mixin(MGBPC(768, 0x100)); }
		bool bBuildThisPylon(bool val) { mixin(MSBPC(768, 0x100)); }
		bool bDrawObstacleSurface() { mixin(MGBPC(768, 0x80)); }
		bool bDrawObstacleSurface(bool val) { mixin(MSBPC(768, 0x80)); }
		bool bDrawWalkableSurface() { mixin(MGBPC(768, 0x40)); }
		bool bDrawWalkableSurface(bool val) { mixin(MSBPC(768, 0x40)); }
		bool bRenderInShowPaths() { mixin(MGBPC(768, 0x20)); }
		bool bRenderInShowPaths(bool val) { mixin(MSBPC(768, 0x20)); }
		bool bDrawPolyBounds() { mixin(MGBPC(768, 0x10)); }
		bool bDrawPolyBounds(bool val) { mixin(MSBPC(768, 0x10)); }
		bool bDrawEdgePolys() { mixin(MGBPC(768, 0x8)); }
		bool bDrawEdgePolys(bool val) { mixin(MSBPC(768, 0x8)); }
		bool bNeedsCostCheck() { mixin(MGBPC(768, 0x4)); }
		bool bNeedsCostCheck(bool val) { mixin(MSBPC(768, 0x4)); }
		bool bUseExpansionSphereOverride() { mixin(MGBPC(768, 0x2)); }
		bool bUseExpansionSphereOverride(bool val) { mixin(MSBPC(768, 0x2)); }
		bool bImportedMesh() { mixin(MGBPC(768, 0x1)); }
		bool bImportedMesh(bool val) { mixin(MSBPC(768, 0x1)); }
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

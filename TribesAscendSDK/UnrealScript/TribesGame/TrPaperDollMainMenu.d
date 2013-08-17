module UnrealScript.TribesGame.TrPaperDollMainMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrMainMenuMeshInfo;
import UnrealScript.TribesGame.TrPaperDoll;

extern(C++) interface TrPaperDollMainMenu : TrPaperDoll
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPaperDollMainMenu")()); }
	private static __gshared TrPaperDollMainMenu mDefaultProperties;
	@property final static TrPaperDollMainMenu DefaultProperties() { mixin(MGDPC!(TrPaperDollMainMenu, "TrPaperDollMainMenu TribesGame.Default__TrPaperDollMainMenu")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTick;
			ScriptFunction mGetDevicePaperDollInfo;
			ScriptFunction mSetMainMesh;
			ScriptFunction mOnCharacterMeshContentDataClassLoaded;
			ScriptFunction mOnDeviceContentDataClassLoaded;
			ScriptFunction mTryUpdatingPaperDoll;
			ScriptFunction mSetWeaponOnlyMesh;
			ScriptFunction mSetFamilyInfo;
			ScriptFunction mSetMainMeshInfo;
			ScriptFunction mCreateAndAttachParticleSystems;
			ScriptFunction mDetachAndDestroyMeshAttachments;
			ScriptFunction mSetSpinning;
			ScriptFunction mEmptyChildrenMeshes;
			ScriptFunction mAddChildrenMeshes;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrPaperDollMainMenu.PostBeginPlay")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrPaperDollMainMenu.Tick")()); }
			ScriptFunction GetDevicePaperDollInfo() { mixin(MGF!("mGetDevicePaperDollInfo", "Function TribesGame.TrPaperDollMainMenu.GetDevicePaperDollInfo")()); }
			ScriptFunction SetMainMesh() { mixin(MGF!("mSetMainMesh", "Function TribesGame.TrPaperDollMainMenu.SetMainMesh")()); }
			ScriptFunction OnCharacterMeshContentDataClassLoaded() { mixin(MGF!("mOnCharacterMeshContentDataClassLoaded", "Function TribesGame.TrPaperDollMainMenu.OnCharacterMeshContentDataClassLoaded")()); }
			ScriptFunction OnDeviceContentDataClassLoaded() { mixin(MGF!("mOnDeviceContentDataClassLoaded", "Function TribesGame.TrPaperDollMainMenu.OnDeviceContentDataClassLoaded")()); }
			ScriptFunction TryUpdatingPaperDoll() { mixin(MGF!("mTryUpdatingPaperDoll", "Function TribesGame.TrPaperDollMainMenu.TryUpdatingPaperDoll")()); }
			ScriptFunction SetWeaponOnlyMesh() { mixin(MGF!("mSetWeaponOnlyMesh", "Function TribesGame.TrPaperDollMainMenu.SetWeaponOnlyMesh")()); }
			ScriptFunction SetFamilyInfo() { mixin(MGF!("mSetFamilyInfo", "Function TribesGame.TrPaperDollMainMenu.SetFamilyInfo")()); }
			ScriptFunction SetMainMeshInfo() { mixin(MGF!("mSetMainMeshInfo", "Function TribesGame.TrPaperDollMainMenu.SetMainMeshInfo")()); }
			ScriptFunction CreateAndAttachParticleSystems() { mixin(MGF!("mCreateAndAttachParticleSystems", "Function TribesGame.TrPaperDollMainMenu.CreateAndAttachParticleSystems")()); }
			ScriptFunction DetachAndDestroyMeshAttachments() { mixin(MGF!("mDetachAndDestroyMeshAttachments", "Function TribesGame.TrPaperDollMainMenu.DetachAndDestroyMeshAttachments")()); }
			ScriptFunction SetSpinning() { mixin(MGF!("mSetSpinning", "Function TribesGame.TrPaperDollMainMenu.SetSpinning")()); }
			ScriptFunction EmptyChildrenMeshes() { mixin(MGF!("mEmptyChildrenMeshes", "Function TribesGame.TrPaperDollMainMenu.EmptyChildrenMeshes")()); }
			ScriptFunction AddChildrenMeshes() { mixin(MGF!("mAddChildrenMeshes", "Function TribesGame.TrPaperDollMainMenu.AddChildrenMeshes")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) m_ChildSkeletalMeshComponents() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 916)()); }
			TrObject.EContentDataType m_OldContentDataType() { mixin(MGPC!("TrObject.EContentDataType", 940)()); }
			Rotator m_rZeroedRotation() { mixin(MGPC!("Rotator", 928)()); }
			float m_fFullCharacterLightingContrastFactor() { mixin(MGPC!("float", 912)()); }
		}
		bool m_bWasLastMeshSwapRequestMainMenuContentScene() { mixin(MGBPC!(908, 0x2)()); }
		bool m_bWasLastMeshSwapRequestMainMenuContentScene(bool val) { mixin(MSBPC!(908, 0x2)()); }
		bool m_bEditorMode() { mixin(MGBPC!(908, 0x1)()); }
		bool m_bEditorMode(bool val) { mixin(MSBPC!(908, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	TrObject.PaperDollInfo GetDevicePaperDollInfo(ScriptClass WeaponClass)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDevicePaperDollInfo, params.ptr, cast(void*)0);
		return *cast(TrObject.PaperDollInfo*)&params[4];
	}
	void SetMainMesh(TrObject.PaperDollInfo NewInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(TrObject.PaperDollInfo*)params.ptr = NewInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMainMesh, params.ptr, cast(void*)0);
	}
	void OnCharacterMeshContentDataClassLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCharacterMeshContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void TryUpdatingPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TryUpdatingPaperDoll, cast(void*)0, cast(void*)0);
	}
	void SetWeaponOnlyMesh(ScriptClass WeaponClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponOnlyMesh, params.ptr, cast(void*)0);
	}
	void SetFamilyInfo(ScriptClass NewFamilyInfoClass, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewFamilyInfoClass;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFamilyInfo, params.ptr, cast(void*)0);
	}
	void SetMainMeshInfo(TrMainMenuMeshInfo NewMainMeshInfo, TrObject.EContentDataType ContentDataType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrMainMenuMeshInfo*)params.ptr = NewMainMeshInfo;
		*cast(TrObject.EContentDataType*)&params[4] = ContentDataType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMainMeshInfo, params.ptr, cast(void*)0);
	}
	void CreateAndAttachParticleSystems(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pMeshComponent, ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo) ParticleSystems)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pMeshComponent;
		*cast(ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo)*)&params[4] = ParticleSystems;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAndAttachParticleSystems, params.ptr, cast(void*)0);
	}
	void DetachAndDestroyMeshAttachments(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pMeshComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pMeshComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachAndDestroyMeshAttachments, params.ptr, cast(void*)0);
	}
	void SetSpinning(bool bShouldSpin, bool bReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldSpin;
		*cast(bool*)&params[4] = bReset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpinning, params.ptr, cast(void*)0);
	}
	void EmptyChildrenMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EmptyChildrenMeshes, cast(void*)0, cast(void*)0);
	}
	void AddChildrenMeshes(TrMainMenuMeshInfo Parent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrMainMenuMeshInfo*)params.ptr = Parent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddChildrenMeshes, params.ptr, cast(void*)0);
	}
}

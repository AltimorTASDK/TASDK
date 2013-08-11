module UnrealScript.TribesGame.TrPaperDollMainMenu;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrMainMenuMeshInfo;
import UnrealScript.TribesGame.TrPaperDoll;

extern(C++) interface TrPaperDollMainMenu : TrPaperDoll
{
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) m_ChildSkeletalMeshComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref TrObject.EContentDataType m_OldContentDataType() { return *cast(TrObject.EContentDataType*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref Rotator m_rZeroedRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref float m_fFullCharacterLightingContrastFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
	public @property final bool m_bWasLastMeshSwapRequestMainMenuContentScene() { return (*cast(uint*)(cast(size_t)cast(void*)this + 908) & 0x2) != 0; }
	public @property final bool m_bWasLastMeshSwapRequestMainMenuContentScene(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 908) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 908) &= ~0x2; } return val; }
	public @property final bool m_bEditorMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 908) & 0x1) != 0; }
	public @property final bool m_bEditorMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 908) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 908) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100497], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100498], params.ptr, cast(void*)0);
	}
	final TrObject.PaperDollInfo GetDevicePaperDollInfo(ScriptClass WeaponClass)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100500], params.ptr, cast(void*)0);
		return *cast(TrObject.PaperDollInfo*)&params[4];
	}
	final void SetMainMesh(TrObject.PaperDollInfo NewInfo)
	{
		ubyte params[56];
		params[] = 0;
		*cast(TrObject.PaperDollInfo*)params.ptr = NewInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100503], params.ptr, cast(void*)0);
	}
	final void OnCharacterMeshContentDataClassLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100505], params.ptr, cast(void*)0);
	}
	final void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100507], params.ptr, cast(void*)0);
	}
	final void TryUpdatingPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100509], cast(void*)0, cast(void*)0);
	}
	final void SetWeaponOnlyMesh(ScriptClass WeaponClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = WeaponClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100510], params.ptr, cast(void*)0);
	}
	final void SetFamilyInfo(ScriptClass NewFamilyInfoClass, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewFamilyInfoClass;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100512], params.ptr, cast(void*)0);
	}
	final void SetMainMeshInfo(TrMainMenuMeshInfo NewMainMeshInfo, TrObject.EContentDataType ContentDataType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrMainMenuMeshInfo*)params.ptr = NewMainMeshInfo;
		*cast(TrObject.EContentDataType*)&params[4] = ContentDataType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100517], params.ptr, cast(void*)0);
	}
	final void CreateAndAttachParticleSystems(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshComponent, ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo) ParticleSystems)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshComponent;
		*cast(ScriptArray!(TrMainMenuMeshInfo.ParticleSystemInfo)*)&params[4] = ParticleSystems;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100520], params.ptr, cast(void*)0);
	}
	final void DetachAndDestroyMeshAttachments(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* MeshComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = MeshComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100526], params.ptr, cast(void*)0);
	}
	final void SetSpinning(bool bShouldSpin, bool bReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldSpin;
		*cast(bool*)&params[4] = bReset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100529], params.ptr, cast(void*)0);
	}
	final void EmptyChildrenMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100532], cast(void*)0, cast(void*)0);
	}
	final void AddChildrenMeshes(TrMainMenuMeshInfo Parent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrMainMenuMeshInfo*)params.ptr = Parent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100534], params.ptr, cast(void*)0);
	}
}

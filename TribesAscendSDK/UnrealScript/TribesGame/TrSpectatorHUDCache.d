module UnrealScript.TribesGame.TrSpectatorHUDCache;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrSpectatorHUDCache : UObject
{
	public @property final bool CachedPlayerPanelFlagCarried() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool CachedPlayerPanelFlagCarried(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	public @property final auto ref ScriptString CachedPlayerPanelPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptString CachedPlayerPanelClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptString CachedPlayerPanelNextRegen() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int CachedPlayerPanelHealthBarFill() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptString CachedPlayerPanelHealth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int CachedPlayerPanelEnergyFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptString CachedPlayerPanelEnergy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString CachedPlayerPanelPrimaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString CachedPlayerPanelPrimaryAmmoCount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString CachedPlayerPanelSecondaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString CachedPlayerPanelSecondaryAmmoCount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int CachedPlayerPanelOffhandIcon() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString CachedPlayerPanelOffhandAmmo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref ScriptString CachedPlayerPanelOffhandName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref int CachedPlayerPanelPackIcon() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString CachedPlayerPanelPackAmmo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptString CachedPlayerPanelPackName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref int CachedPlayerPanelPerk1Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString CachedPlayerPanelPerk1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref int CachedPlayerPanelPerk2Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptString CachedPlayerPanelPerk2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int CachedPlayerPanelSkiFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptString CachedPlayerPanelSkiSpeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref int CachedPlayerPanelSelected() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final bool CachedVehiclePanelFlagCarried() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool CachedVehiclePanelFlagCarried(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final auto ref ScriptString CachedVehiclePanelVehicleName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptString CachedVehiclePanelDriverName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ScriptString CachedVehiclePanelPassengerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref int CachedVehiclePanelHealthFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref ScriptString CachedVehiclePanelHealth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref int CachedVehiclePanelEnergyFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref ScriptString CachedVehiclePanelEnergy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptString CachedVehiclePanelPrimaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref int CachedVehiclePanelPrimaryWeaponReady() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final bool CachedVehiclePanelPrimaryWeaponVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool CachedVehiclePanelPrimaryWeaponVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final auto ref ScriptString CachedVehiclePanelSecondaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int CachedVehiclePanelSecondaryWeaponReady() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
	public @property final bool CachedVehiclePanelSecondaryWeaponVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool CachedVehiclePanelSecondaryWeaponVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final auto ref int CachedVehiclePanelSkiFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptString CachedVehiclePanelSkiSpeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref int CachedVehiclePanelSelected() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref ScriptString CachedBookmarkPanelTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref ScriptString CachedBookmarkPanelName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref ScriptString CachedObjectivePanelObjectiveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref ScriptString CachedObjectivePanelObjectiveDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref int CachedObjectivePanelHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref ScriptString CachedFloatCameraPanelName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref ScriptString CachedFloatCameraPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int CachedObjectivePanelHealthFillFrameIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 456); }
}

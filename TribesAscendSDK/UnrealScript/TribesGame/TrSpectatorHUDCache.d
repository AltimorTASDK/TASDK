module UnrealScript.TribesGame.TrSpectatorHUDCache;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrSpectatorHUDCache : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString CachedPlayerPanelPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
			ScriptString CachedPlayerPanelClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
			ScriptString CachedPlayerPanelNextRegen() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
			int CachedPlayerPanelHealthBarFill() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			ScriptString CachedPlayerPanelHealth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
			int CachedPlayerPanelEnergyFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			ScriptString CachedPlayerPanelEnergy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
			ScriptString CachedPlayerPanelPrimaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			ScriptString CachedPlayerPanelPrimaryAmmoCount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
			ScriptString CachedPlayerPanelSecondaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
			ScriptString CachedPlayerPanelSecondaryAmmoCount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
			int CachedPlayerPanelOffhandIcon() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			ScriptString CachedPlayerPanelOffhandAmmo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
			ScriptString CachedPlayerPanelOffhandName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			int CachedPlayerPanelPackIcon() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
			ScriptString CachedPlayerPanelPackAmmo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
			ScriptString CachedPlayerPanelPackName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
			int CachedPlayerPanelPerk1Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
			ScriptString CachedPlayerPanelPerk1Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
			int CachedPlayerPanelPerk2Icon() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			ScriptString CachedPlayerPanelPerk2Name() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
			int CachedPlayerPanelSkiFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
			ScriptString CachedPlayerPanelSkiSpeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
			int CachedPlayerPanelSelected() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
			ScriptString CachedVehiclePanelVehicleName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
			ScriptString CachedVehiclePanelDriverName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
			ScriptString CachedVehiclePanelPassengerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 312); }
			int CachedVehiclePanelHealthFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 324); }
			ScriptString CachedVehiclePanelHealth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 328); }
			int CachedVehiclePanelEnergyFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 340); }
			ScriptString CachedVehiclePanelEnergy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 344); }
			ScriptString CachedVehiclePanelPrimaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 356); }
			int CachedVehiclePanelPrimaryWeaponReady() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			ScriptString CachedVehiclePanelSecondaryWeaponName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
			int CachedVehiclePanelSecondaryWeaponReady() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
			int CachedVehiclePanelSkiFillBar() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
			ScriptString CachedVehiclePanelSkiSpeed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
			int CachedVehiclePanelSelected() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
			ScriptString CachedBookmarkPanelTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
			ScriptString CachedBookmarkPanelName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
			ScriptString CachedObjectivePanelObjectiveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 432); }
			ScriptString CachedObjectivePanelObjectiveDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
			int CachedObjectivePanelHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 460); }
			ScriptString CachedFloatCameraPanelName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
			ScriptString CachedFloatCameraPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
			int CachedObjectivePanelHealthFillFrameIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 456); }
		}
		bool CachedPlayerPanelFlagCarried() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool CachedPlayerPanelFlagCarried(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool CachedVehiclePanelFlagCarried() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool CachedVehiclePanelFlagCarried(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool CachedVehiclePanelPrimaryWeaponVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool CachedVehiclePanelPrimaryWeaponVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool CachedVehiclePanelSecondaryWeaponVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool CachedVehiclePanelSecondaryWeaponVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	}
}

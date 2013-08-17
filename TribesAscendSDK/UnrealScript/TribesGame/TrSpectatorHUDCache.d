module UnrealScript.TribesGame.TrSpectatorHUDCache;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrSpectatorHUDCache : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSpectatorHUDCache")()); }
	private static __gshared TrSpectatorHUDCache mDefaultProperties;
	@property final static TrSpectatorHUDCache DefaultProperties() { mixin(MGDPC!(TrSpectatorHUDCache, "TrSpectatorHUDCache TribesGame.Default__TrSpectatorHUDCache")()); }
	@property final
	{
		auto ref
		{
			ScriptString CachedPlayerPanelPlayerName() { mixin(MGPC!(ScriptString, 64)()); }
			ScriptString CachedPlayerPanelClassName() { mixin(MGPC!(ScriptString, 76)()); }
			ScriptString CachedPlayerPanelNextRegen() { mixin(MGPC!(ScriptString, 88)()); }
			int CachedPlayerPanelHealthBarFill() { mixin(MGPC!(int, 100)()); }
			ScriptString CachedPlayerPanelHealth() { mixin(MGPC!(ScriptString, 104)()); }
			int CachedPlayerPanelEnergyFillBar() { mixin(MGPC!(int, 116)()); }
			ScriptString CachedPlayerPanelEnergy() { mixin(MGPC!(ScriptString, 120)()); }
			ScriptString CachedPlayerPanelPrimaryWeaponName() { mixin(MGPC!(ScriptString, 132)()); }
			ScriptString CachedPlayerPanelPrimaryAmmoCount() { mixin(MGPC!(ScriptString, 144)()); }
			ScriptString CachedPlayerPanelSecondaryWeaponName() { mixin(MGPC!(ScriptString, 156)()); }
			ScriptString CachedPlayerPanelSecondaryAmmoCount() { mixin(MGPC!(ScriptString, 168)()); }
			int CachedPlayerPanelOffhandIcon() { mixin(MGPC!(int, 180)()); }
			ScriptString CachedPlayerPanelOffhandAmmo() { mixin(MGPC!(ScriptString, 184)()); }
			ScriptString CachedPlayerPanelOffhandName() { mixin(MGPC!(ScriptString, 196)()); }
			int CachedPlayerPanelPackIcon() { mixin(MGPC!(int, 208)()); }
			ScriptString CachedPlayerPanelPackAmmo() { mixin(MGPC!(ScriptString, 212)()); }
			ScriptString CachedPlayerPanelPackName() { mixin(MGPC!(ScriptString, 224)()); }
			int CachedPlayerPanelPerk1Icon() { mixin(MGPC!(int, 236)()); }
			ScriptString CachedPlayerPanelPerk1Name() { mixin(MGPC!(ScriptString, 240)()); }
			int CachedPlayerPanelPerk2Icon() { mixin(MGPC!(int, 252)()); }
			ScriptString CachedPlayerPanelPerk2Name() { mixin(MGPC!(ScriptString, 256)()); }
			int CachedPlayerPanelSkiFillBar() { mixin(MGPC!(int, 268)()); }
			ScriptString CachedPlayerPanelSkiSpeed() { mixin(MGPC!(ScriptString, 272)()); }
			int CachedPlayerPanelSelected() { mixin(MGPC!(int, 284)()); }
			ScriptString CachedVehiclePanelVehicleName() { mixin(MGPC!(ScriptString, 288)()); }
			ScriptString CachedVehiclePanelDriverName() { mixin(MGPC!(ScriptString, 300)()); }
			ScriptString CachedVehiclePanelPassengerName() { mixin(MGPC!(ScriptString, 312)()); }
			int CachedVehiclePanelHealthFillBar() { mixin(MGPC!(int, 324)()); }
			ScriptString CachedVehiclePanelHealth() { mixin(MGPC!(ScriptString, 328)()); }
			int CachedVehiclePanelEnergyFillBar() { mixin(MGPC!(int, 340)()); }
			ScriptString CachedVehiclePanelEnergy() { mixin(MGPC!(ScriptString, 344)()); }
			ScriptString CachedVehiclePanelPrimaryWeaponName() { mixin(MGPC!(ScriptString, 356)()); }
			int CachedVehiclePanelPrimaryWeaponReady() { mixin(MGPC!(int, 368)()); }
			ScriptString CachedVehiclePanelSecondaryWeaponName() { mixin(MGPC!(ScriptString, 372)()); }
			int CachedVehiclePanelSecondaryWeaponReady() { mixin(MGPC!(int, 384)()); }
			int CachedVehiclePanelSkiFillBar() { mixin(MGPC!(int, 388)()); }
			ScriptString CachedVehiclePanelSkiSpeed() { mixin(MGPC!(ScriptString, 392)()); }
			int CachedVehiclePanelSelected() { mixin(MGPC!(int, 404)()); }
			ScriptString CachedBookmarkPanelTitle() { mixin(MGPC!(ScriptString, 408)()); }
			ScriptString CachedBookmarkPanelName() { mixin(MGPC!(ScriptString, 420)()); }
			ScriptString CachedObjectivePanelObjectiveName() { mixin(MGPC!(ScriptString, 432)()); }
			ScriptString CachedObjectivePanelObjectiveDescription() { mixin(MGPC!(ScriptString, 444)()); }
			int CachedObjectivePanelHealth() { mixin(MGPC!(int, 460)()); }
			ScriptString CachedFloatCameraPanelName() { mixin(MGPC!(ScriptString, 464)()); }
			ScriptString CachedFloatCameraPanelDescription() { mixin(MGPC!(ScriptString, 476)()); }
			int CachedObjectivePanelHealthFillFrameIndex() { mixin(MGPC!(int, 456)()); }
		}
		bool CachedPlayerPanelFlagCarried() { mixin(MGBPC!(60, 0x1)()); }
		bool CachedPlayerPanelFlagCarried(bool val) { mixin(MSBPC!(60, 0x1)()); }
		bool CachedVehiclePanelFlagCarried() { mixin(MGBPC!(60, 0x2)()); }
		bool CachedVehiclePanelFlagCarried(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool CachedVehiclePanelPrimaryWeaponVisible() { mixin(MGBPC!(60, 0x4)()); }
		bool CachedVehiclePanelPrimaryWeaponVisible(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool CachedVehiclePanelSecondaryWeaponVisible() { mixin(MGBPC!(60, 0x8)()); }
		bool CachedVehiclePanelSecondaryWeaponVisible(bool val) { mixin(MSBPC!(60, 0x8)()); }
	}
}

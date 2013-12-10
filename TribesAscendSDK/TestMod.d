module TestMod;

import IndentedStreamWriter;
import ScriptHooks;
import ScriptClasses;

private import UnrealScript.TribesGame.TrObject;
private import UnrealScript.TribesGame.TrPlayerController;
private import UnrealScript.TribesGame.TrPawn;
private import UnrealScript.TribesGame.TrPlayerReplicationInfo;
private import UnrealScript.TribesGame.TrDevice;
private import UnrealScript.TribesGame.TrInventoryManager;
private import UnrealScript.Engine.Actor;
private import UnrealScript.UTGame.UTPlayerController;

private import UnrealScript.TribesGame.TrDevice_ChainGun;
private import UnrealScript.TribesGame.TrDevice_LightSpinfusor;
private import UnrealScript.TribesGame.TrDevice_GrenadeLauncher;
private import UnrealScript.TribesGame.TrDevice_PlasmaGun;
private import UnrealScript.TribesGame.TrDevice_MortarLauncher;

//SDK example mod

//Spawn time 2 seconds
//Chain, disc, nade, plasma, mortar for everyone

public enum CUSTOM_EQUIP_POINT : TrObject.TR_EQUIP_POINT
{
	EQP_Tertiary = cast(TrObject.TR_EQUIP_POINT)(13),
	EQP_Quaternary = cast(TrObject.TR_EQUIP_POINT)(14),
	EQP_Quinary = cast(TrObject.TR_EQUIP_POINT)(15),
}

extern(C) HookType TribesGame_TrPlayerController_GetRespawnDelayTotalTime(TrPlayerController pThis, ref float result)
{
	result = 2.0f;
	
	return HookType.Block;
}

extern(C) HookType TribesGame_TrPlayerReplicationInfo_GetEquipDevice(TrPlayerReplicationInfo pThis, ref ScriptClass result, ScriptClass FamilyInfo, TrObject.TR_EQUIP_POINT EquipSlot)
{
	//Handle weapons
	if (EquipSlot == TrObject.TR_EQUIP_POINT.EQP_Primary)
	{
		result = TrDevice_ChainGun.StaticClass();
		return HookType.Block;
	} else if (EquipSlot == TrObject.TR_EQUIP_POINT.EQP_Secondary)
	{
		result = TrDevice_LightSpinfusor.StaticClass();
		return HookType.Block;
	} else if (EquipSlot == CUSTOM_EQUIP_POINT.EQP_Tertiary)
	{
		result = TrDevice_GrenadeLauncher.StaticClass();
		return HookType.Block;
	} else if (EquipSlot == CUSTOM_EQUIP_POINT.EQP_Quaternary)
	{
		result = TrDevice_PlasmaGun.StaticClass();
		return HookType.Block;
	} else if (EquipSlot == CUSTOM_EQUIP_POINT.EQP_Quinary)
	{
		result = TrDevice_MortarLauncher.StaticClass();
		return HookType.Block;
	}

	//Otherwise hand it off to the game
	return HookType.Continue;
}

extern(C) void TribesGame_TrPawn_RefreshInventory(TrPawn pThis, void* result, bool bIsRespawn, bool bCallin)
{
	pThis.EquipBestPossibleDevice(CUSTOM_EQUIP_POINT.EQP_Tertiary);
	pThis.EquipBestPossibleDevice(CUSTOM_EQUIP_POINT.EQP_Quaternary);
	pThis.EquipBestPossibleDevice(CUSTOM_EQUIP_POINT.EQP_Quinary);
}

extern(C) HookType TribesGame_TrPlayerController_SwitchToCallIn(TrPlayerController pThis, void* result, ubyte T)
{
	TrPawn pawn = cast(TrPawn)(pThis.PawnVar);

	if (pawn)
	{
		TrInventoryManager invManager = cast(TrInventoryManager)(pawn.InvManager);

		if (invManager)
		{
			TrDevice device = invManager.GetDeviceByEquipPoint(TrObject.TR_EQUIP_POINT.EQP_LaserTarget);

			if (cast(TrDevice)(pawn.WeaponVar) != device) //Make sure it's not already equipped
			{
				if (T == 1)
					invManager.SwitchWeaponByEquipPoint(CUSTOM_EQUIP_POINT.EQP_Tertiary);
				else if (T == 2)
					invManager.SwitchWeaponByEquipPoint(CUSTOM_EQUIP_POINT.EQP_Quaternary);
				else if (T == 3)
					invManager.SwitchWeaponByEquipPoint(CUSTOM_EQUIP_POINT.EQP_Quinary);
			}
		}
	}
	
	return HookType.Block;
}

void ModInit()
{
	AddHook(TrPlayerController.Functions.GetRespawnDelayTotalTime, &TribesGame_TrPlayerController_GetRespawnDelayTotalTime, HookOrder.Pre);
	AddHook(TrPlayerReplicationInfo.Functions.GetEquipDevice, &TribesGame_TrPlayerReplicationInfo_GetEquipDevice, HookOrder.Pre);
	AddHook(TrPawn.Functions.RefreshInventory, &TribesGame_TrPawn_RefreshInventory, HookOrder.Post);
	AddHook(TrPlayerController.Functions.SwitchToCallIn, &TribesGame_TrPlayerController_SwitchToCallIn, HookOrder.Pre);

	//State functions aren't in Class.Functions yet, you have to use the following method to hook them
	//"Function Package.Class.State.Function"
	//AddHook("Function TribesGame.TrPlayerController.PlayerWalking.PlayerMove", &TribesGame_TrPlayerController_PlayerMove);
}
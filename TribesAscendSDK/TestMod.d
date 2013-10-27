module TestMod;

import IndentedStreamWriter;
import ScriptHooks;
import ScriptClasses;
//private import UnrealScript.Core.UObject;
private import UnrealScript.TribesGame.TrPlayerController;
//private import UnrealScript.TribesGame.TrEquipInterface;
private import UnrealScript.TribesGame.TrDevice_ThumperD;


extern(C) HookType TribesGame_TrPlayerController_PlayRespawnSoonSound(TrPlayerController pThis, ref void* result)
{
	IndentedStreamWriter wtr = new IndentedStreamWriter("TribesAscendSDK-ItWorks.txt");
	wtr.WriteLine("Hello!");
	wtr.WriteLine();
	wtr.Close();
	return HookType.Block;
}

void ModInit()
{
	TrDevice_ThumperD.DefaultProperties.m_nMaxCarriedAmmo = 50;
	TrDevice_ThumperD.DefaultProperties.m_nCarriedAmmo = 50;
	TrDevice_ThumperD.DefaultProperties.m_fReloadTime = 0.3f;
	
	AddHook(TrPlayerController.Functions.PlayRespawnSoonSound, &TribesGame_TrPlayerController_PlayRespawnSoonSound);
	//RInterpTo(
	//RInterpTo(Rotator(), Rotator(), 0, 0);
	//bool b;

	//if (UObject.RInterpTo(Rotator(), Rotator(), 0f, 0f).stringof)
	//	return;
}
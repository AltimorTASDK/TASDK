module TestMod;

import ScriptClasses;
private import UnrealScript.Core.UObject;
//private import UnrealScript.TribesGame.TrPlayerController;
//private import UnrealScript.TribesGame.TrEquipInterface;


//void SomeMethod(TrPlayerController pThis)
//{

//}

void ModInit()
{
	//RInterpTo(
	//RInterpTo(Rotator(), Rotator(), 0, 0);
	bool b;
	if (UObject.RInterpTo(Rotator(), Rotator(), 0f, 0f, &b).stringof)
		return;
}
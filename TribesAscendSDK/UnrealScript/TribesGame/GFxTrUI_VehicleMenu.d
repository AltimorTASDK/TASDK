module UnrealScript.TribesGame.GFxTrUI_VehicleMenu;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

extern(C++) interface GFxTrUI_VehicleMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
final:
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65218], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConfigureOptions(ScriptClass FamilyInfo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65221], params.ptr, cast(void*)0);
	}
	void VehicleOptionsComplete(int Credits)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Credits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65233], params.ptr, cast(void*)0);
	}
	void VehicleOptionsClear()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65235], cast(void*)0, cast(void*)0);
	}
	void SetVehicleOption(ScriptString ClassName, ScriptString DisplayName, int Cost, int nIconIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(ScriptString*)&params[12] = DisplayName;
		*cast(int*)&params[24] = Cost;
		*cast(int*)&params[28] = nIconIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65236], params.ptr, cast(void*)0);
	}
	ScriptString GetSelectedVehicle()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65241], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnVehicleScreenFinished()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65243], cast(void*)0, cast(void*)0);
	}
}

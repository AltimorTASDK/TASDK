module UnrealScript.Engine.AIController;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Route;
import UnrealScript.Engine.SeqAct_AIMoveToActor;
import UnrealScript.Engine.HUD;

extern(C++) interface AIController : Controller
{
	public @property final auto ref Actor ScriptedFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref int ScriptedRouteIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref Route ScriptedRoute() { return *cast(Route*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref Actor ScriptedMoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref float Skill() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
	public @property final bool bReverseScriptedRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x2) != 0; }
	public @property final bool bReverseScriptedRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x2; } return val; }
	public @property final bool bAdjustFromWalls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x1) != 0; }
	public @property final bool bAdjustFromWalls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x1; } return val; }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9716], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9718], cast(void*)0, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9719], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final void SetTeam(int inTeamIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = inTeamIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9728], params.ptr, cast(void*)0);
	}
	final void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9730], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	final void OnAIMoveToActor(SeqAct_AIMoveToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AIMoveToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9733], params.ptr, cast(void*)0);
	}
	final void NotifyWeaponFired(Weapon W, ubyte FireMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9748], params.ptr, cast(void*)0);
	}
	final void NotifyWeaponFinishedFiring(Weapon W, ubyte FireMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9751], params.ptr, cast(void*)0);
	}
	final bool CanFireWeapon(Weapon Wpn, ubyte FireModeNum)
	{
		ubyte params[9];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wpn;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9754], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AIController")); }
	private static __gshared AIController mDefaultProperties;
	@property final static AIController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AIController)("AIController Engine.Default__AIController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mReset;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetTeam;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mOnAIMoveToActor;
			ScriptFunction mNotifyWeaponFired;
			ScriptFunction mNotifyWeaponFinishedFiring;
			ScriptFunction mCanFireWeapon;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.PreBeginPlay")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.Reset")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.DisplayDebug")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.SetTeam")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.GetPlayerViewPoint")); }
			ScriptFunction OnAIMoveToActor() { return mOnAIMoveToActor ? mOnAIMoveToActor : (mOnAIMoveToActor = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.OnAIMoveToActor")); }
			ScriptFunction NotifyWeaponFired() { return mNotifyWeaponFired ? mNotifyWeaponFired : (mNotifyWeaponFired = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.NotifyWeaponFired")); }
			ScriptFunction NotifyWeaponFinishedFiring() { return mNotifyWeaponFinishedFiring ? mNotifyWeaponFinishedFiring : (mNotifyWeaponFinishedFiring = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.NotifyWeaponFinishedFiring")); }
			ScriptFunction CanFireWeapon() { return mCanFireWeapon ? mCanFireWeapon : (mCanFireWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.AIController.CanFireWeapon")); }
		}
	}
	@property final
	{
		auto ref
		{
			Actor ScriptedFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 920); }
			int ScriptedRouteIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 916); }
			Route ScriptedRoute() { return *cast(Route*)(cast(size_t)cast(void*)this + 912); }
			Actor ScriptedMoveTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 908); }
			float Skill() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
		}
		bool bReverseScriptedRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x2) != 0; }
		bool bReverseScriptedRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x2; } return val; }
		bool bAdjustFromWalls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 900) & 0x1) != 0; }
		bool bAdjustFromWalls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 900) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 900) &= ~0x1; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void SetTeam(int inTeamIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = inTeamIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void OnAIMoveToActor(SeqAct_AIMoveToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AIMoveToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAIMoveToActor, params.ptr, cast(void*)0);
	}
	void NotifyWeaponFired(Weapon W, ubyte FireMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyWeaponFired, params.ptr, cast(void*)0);
	}
	void NotifyWeaponFinishedFiring(Weapon W, ubyte FireMode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		params[4] = FireMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyWeaponFinishedFiring, params.ptr, cast(void*)0);
	}
	bool CanFireWeapon(Weapon Wpn, ubyte FireModeNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wpn;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanFireWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}

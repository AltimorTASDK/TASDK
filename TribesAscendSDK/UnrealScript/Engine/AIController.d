module UnrealScript.Engine.AIController;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AIController")); }
	private static __gshared AIController mDefaultProperties;
	@property final static AIController DefaultProperties() { mixin(MGDPC("AIController", "AIController Engine.Default__AIController")); }
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
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.AIController.PreBeginPlay")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.AIController.Reset")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function Engine.AIController.DisplayDebug")); }
			ScriptFunction SetTeam() { mixin(MGF("mSetTeam", "Function Engine.AIController.SetTeam")); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF("mGetPlayerViewPoint", "Function Engine.AIController.GetPlayerViewPoint")); }
			ScriptFunction OnAIMoveToActor() { mixin(MGF("mOnAIMoveToActor", "Function Engine.AIController.OnAIMoveToActor")); }
			ScriptFunction NotifyWeaponFired() { mixin(MGF("mNotifyWeaponFired", "Function Engine.AIController.NotifyWeaponFired")); }
			ScriptFunction NotifyWeaponFinishedFiring() { mixin(MGF("mNotifyWeaponFinishedFiring", "Function Engine.AIController.NotifyWeaponFinishedFiring")); }
			ScriptFunction CanFireWeapon() { mixin(MGF("mCanFireWeapon", "Function Engine.AIController.CanFireWeapon")); }
		}
	}
	static struct ScriptedMove
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.AIController.ScriptedMove")); }
	}
	static struct ScriptedRouteMove
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.AIController.ScriptedRouteMove")); }
	}
	@property final
	{
		auto ref
		{
			Actor ScriptedFocus() { mixin(MGPC("Actor", 920)); }
			int ScriptedRouteIndex() { mixin(MGPC("int", 916)); }
			Route ScriptedRoute() { mixin(MGPC("Route", 912)); }
			Actor ScriptedMoveTarget() { mixin(MGPC("Actor", 908)); }
			float Skill() { mixin(MGPC("float", 904)); }
		}
		bool bReverseScriptedRoute() { mixin(MGBPC(900, 0x2)); }
		bool bReverseScriptedRoute(bool val) { mixin(MSBPC(900, 0x2)); }
		bool bAdjustFromWalls() { mixin(MGBPC(900, 0x1)); }
		bool bAdjustFromWalls(bool val) { mixin(MSBPC(900, 0x1)); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
	void SetTeam(int inTeamIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = inTeamIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void GetPlayerViewPoint(ref Vector out_Location, ref Rotator out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = out_Location;
		*cast(Rotator*)&params[12] = out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		out_Location = *cast(Vector*)params.ptr;
		out_Rotation = *cast(Rotator*)&params[12];
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

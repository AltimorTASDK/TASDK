module UnrealScript.UTGame.UTDefensePoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKScriptedNavigationPoint;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDefensePoint : UDKScriptedNavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDefensePoint")); }
	private static __gshared UTDefensePoint mDefaultProperties;
	@property final static UTDefensePoint DefaultProperties() { mixin(MGDPC("UTDefensePoint", "UTDefensePoint UTGame.Default__UTDefensePoint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetMoveTarget;
			ScriptFunction mHigherPriorityThan;
			ScriptFunction mReset;
			ScriptFunction mFreePoint;
			ScriptFunction mCheckForErrors;
			ScriptFunction mPreBeginPlay;
		}
		public @property static final
		{
			ScriptFunction GetMoveTarget() { mixin(MGF("mGetMoveTarget", "Function UTGame.UTDefensePoint.GetMoveTarget")); }
			ScriptFunction HigherPriorityThan() { mixin(MGF("mHigherPriorityThan", "Function UTGame.UTDefensePoint.HigherPriorityThan")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function UTGame.UTDefensePoint.Reset")); }
			ScriptFunction FreePoint() { mixin(MGF("mFreePoint", "Function UTGame.UTDefensePoint.FreePoint")); }
			ScriptFunction CheckForErrors() { mixin(MGF("mCheckForErrors", "Function UTGame.UTDefensePoint.CheckForErrors")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function UTGame.UTDefensePoint.PreBeginPlay")); }
		}
	}
	enum EDefensePriority : ubyte
	{
		DEFPRI_Low = 0,
		DEFPRI_High = 1,
		DEFPRI_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			ScriptClass WeaponPreference() { mixin(MGPC("ScriptClass", 712)); }
			UDKGameObjective DefendedObjective() { mixin(MGPC("UDKGameObjective", 704)); }
			ScriptName DefenseGroup() { mixin(MGPC("ScriptName", 716)); }
			UTDefensePoint NextDefensePoint() { mixin(MGPC("UTDefensePoint", 700)); }
			Controller CurrentUser() { mixin(MGPC("Controller", 696)); }
			ScriptArray!(Texture2D) TeamSprites() { mixin(MGPC("ScriptArray!(Texture2D)", 728)); }
			UTDefensePoint.EDefensePriority DefensePriority() { mixin(MGPC("UTDefensePoint.EDefensePriority", 724)); }
		}
		bool bSniping() { mixin(MGBPC(708, 0x2)); }
		bool bSniping(bool val) { mixin(MSBPC(708, 0x2)); }
		bool bFirstScript() { mixin(MGBPC(708, 0x1)); }
		bool bFirstScript(bool val) { mixin(MSBPC(708, 0x1)); }
		bool bOnlyOnFoot() { mixin(MGBPC(708, 0x4)); }
		bool bOnlyOnFoot(bool val) { mixin(MSBPC(708, 0x4)); }
		bool bOnlySkilled() { mixin(MGBPC(708, 0x8)); }
		bool bOnlySkilled(bool val) { mixin(MSBPC(708, 0x8)); }
	}
final:
	Actor GetMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMoveTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool HigherPriorityThan(UTDefensePoint S, UTBot B, bool bAutoPointsInUse, bool bPrioritizeSameGroup, ref int NumChecked)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UTDefensePoint*)params.ptr = S;
		*cast(UTBot*)&params[4] = B;
		*cast(bool*)&params[8] = bAutoPointsInUse;
		*cast(bool*)&params[12] = bPrioritizeSameGroup;
		*cast(int*)&params[16] = NumChecked;
		(cast(ScriptObject)this).ProcessEvent(Functions.HigherPriorityThan, params.ptr, cast(void*)0);
		NumChecked = *cast(int*)&params[16];
		return *cast(bool*)&params[20];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FreePoint, cast(void*)0, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForErrors, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}

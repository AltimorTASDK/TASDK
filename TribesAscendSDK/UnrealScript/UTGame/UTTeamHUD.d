module UnrealScript.UTGame.UTTeamHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTTeamHUD : UTHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTTeamHUD")); }
	private static __gshared UTTeamHUD mDefaultProperties;
	@property final static UTTeamHUD DefaultProperties() { mixin(MGDPC("UTTeamHUD", "UTTeamHUD UTGame.Default__UTTeamHUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDisplayScoring;
			ScriptFunction mDisplayTeamScore;
			ScriptFunction mGetTeamScore;
			ScriptFunction mGetDirectionalDest;
			ScriptFunction mDisplayTeamLogos;
			ScriptFunction mDisplayDirectionIndicator;
		}
		public @property static final
		{
			ScriptFunction DisplayScoring() { mixin(MGF("mDisplayScoring", "Function UTGame.UTTeamHUD.DisplayScoring")); }
			ScriptFunction DisplayTeamScore() { mixin(MGF("mDisplayTeamScore", "Function UTGame.UTTeamHUD.DisplayTeamScore")); }
			ScriptFunction GetTeamScore() { mixin(MGF("mGetTeamScore", "Function UTGame.UTTeamHUD.GetTeamScore")); }
			ScriptFunction GetDirectionalDest() { mixin(MGF("mGetDirectionalDest", "Function UTGame.UTTeamHUD.GetDirectionalDest")); }
			ScriptFunction DisplayTeamLogos() { mixin(MGF("mDisplayTeamLogos", "Function UTGame.UTTeamHUD.DisplayTeamLogos")); }
			ScriptFunction DisplayDirectionIndicator() { mixin(MGF("mDisplayDirectionIndicator", "Function UTGame.UTTeamHUD.DisplayDirectionIndicator")); }
		}
	}
	@property final
	{
		auto ref
		{
			float TeamScaleModifier() { mixin(MGPC("float", 2736)); }
			float OldRightScore() { mixin(MGPC("float", 2732)); }
			float OldLeftScore() { mixin(MGPC("float", 2728)); }
			float RightTeamPulseTime() { mixin(MGPC("float", 2724)); }
			float LeftTeamPulseTime() { mixin(MGPC("float", 2720)); }
			UObject.Vector2D TeamIconCenterPoints() { mixin(MGPC("UObject.Vector2D", 2704)); }
			int ScoreTransitionTime() { mixin(MGPC("int", 2696)); }
			int LastScores() { mixin(MGPC("int", 2688)); }
		}
		bool bShowDirectional() { mixin(MGBPC(2684, 0x1)); }
		bool bShowDirectional(bool val) { mixin(MSBPC(2684, 0x1)); }
	}
final:
	void DisplayScoring()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayScoring, cast(void*)0, cast(void*)0);
	}
	void DisplayTeamScore()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayTeamScore, cast(void*)0, cast(void*)0);
	}
	int GetTeamScore(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamScore, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	Actor GetDirectionalDest(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirectionalDest, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	void DisplayTeamLogos(ubyte TeamIndex, UObject.Vector2D pos, float* DestScale = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		if (DestScale !is null)
			*cast(float*)&params[12] = *DestScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayTeamLogos, params.ptr, cast(void*)0);
	}
	void DisplayDirectionIndicator(ubyte TeamIndex, UObject.Vector2D pos, Actor destActor, float DestScale)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		*cast(Actor*)&params[12] = destActor;
		*cast(float*)&params[16] = DestScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDirectionIndicator, params.ptr, cast(void*)0);
	}
}

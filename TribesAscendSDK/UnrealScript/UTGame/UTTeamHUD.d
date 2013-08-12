module UnrealScript.UTGame.UTTeamHUD;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTTeamHUD : UTHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamHUD")); }
	private static __gshared UTTeamHUD mDefaultProperties;
	@property final static UTTeamHUD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamHUD)("UTTeamHUD UTGame.Default__UTTeamHUD")); }
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
			ScriptFunction DisplayScoring() { return mDisplayScoring ? mDisplayScoring : (mDisplayScoring = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.DisplayScoring")); }
			ScriptFunction DisplayTeamScore() { return mDisplayTeamScore ? mDisplayTeamScore : (mDisplayTeamScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.DisplayTeamScore")); }
			ScriptFunction GetTeamScore() { return mGetTeamScore ? mGetTeamScore : (mGetTeamScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.GetTeamScore")); }
			ScriptFunction GetDirectionalDest() { return mGetDirectionalDest ? mGetDirectionalDest : (mGetDirectionalDest = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.GetDirectionalDest")); }
			ScriptFunction DisplayTeamLogos() { return mDisplayTeamLogos ? mDisplayTeamLogos : (mDisplayTeamLogos = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.DisplayTeamLogos")); }
			ScriptFunction DisplayDirectionIndicator() { return mDisplayDirectionIndicator ? mDisplayDirectionIndicator : (mDisplayDirectionIndicator = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamHUD.DisplayDirectionIndicator")); }
		}
	}
	@property final
	{
		auto ref
		{
			float TeamScaleModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 2736); }
			float OldRightScore() { return *cast(float*)(cast(size_t)cast(void*)this + 2732); }
			float OldLeftScore() { return *cast(float*)(cast(size_t)cast(void*)this + 2728); }
			float RightTeamPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2724); }
			float LeftTeamPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2720); }
			UObject.Vector2D TeamIconCenterPoints() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 2704); }
			int ScoreTransitionTime() { return *cast(int*)(cast(size_t)cast(void*)this + 2696); }
			int LastScores() { return *cast(int*)(cast(size_t)cast(void*)this + 2688); }
		}
		bool bShowDirectional() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2684) & 0x1) != 0; }
		bool bShowDirectional(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2684) &= ~0x1; } return val; }
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
	void DisplayTeamLogos(ubyte TeamIndex, UObject.Vector2D pos, float DestScale)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		*cast(float*)&params[12] = DestScale;
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

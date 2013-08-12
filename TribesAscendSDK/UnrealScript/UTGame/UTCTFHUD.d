module UnrealScript.UTGame.UTCTFHUD;

import ScriptClasses;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTTeamHUD;
import UnrealScript.UTGame.UTCTFBase;

extern(C++) interface UTCTFHUD : UTTeamHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFHUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
			ScriptFunction mDisplayTeamLogos;
			ScriptFunction mGetDirectionalDest;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFHUD.PostBeginPlay")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFHUD.Timer")); }
			ScriptFunction DisplayTeamLogos() { return mDisplayTeamLogos ? mDisplayTeamLogos : (mDisplayTeamLogos = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFHUD.DisplayTeamLogos")); }
			ScriptFunction GetDirectionalDest() { return mGetDirectionalDest ? mGetDirectionalDest : (mGetDirectionalDest = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFHUD.GetDirectionalDest")); }
		}
	}
	@property final auto ref
	{
		UTGameReplicationInfo.EFlagState FlagStates() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 2748); }
		UTCTFBase FlagBases() { return *cast(UTCTFBase*)(cast(size_t)cast(void*)this + 2740); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
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
	Actor GetDirectionalDest(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirectionalDest, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}

module UnrealScript.UTGame.UTCTFHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTTeamHUD;
import UnrealScript.UTGame.UTCTFBase;

extern(C++) interface UTCTFHUD : UTTeamHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTCTFHUD")); }
	private static __gshared UTCTFHUD mDefaultProperties;
	@property final static UTCTFHUD DefaultProperties() { mixin(MGDPC("UTCTFHUD", "UTCTFHUD UTGame.Default__UTCTFHUD")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTCTFHUD.PostBeginPlay")); }
			ScriptFunction Timer() { mixin(MGF("mTimer", "Function UTGame.UTCTFHUD.Timer")); }
			ScriptFunction DisplayTeamLogos() { mixin(MGF("mDisplayTeamLogos", "Function UTGame.UTCTFHUD.DisplayTeamLogos")); }
			ScriptFunction GetDirectionalDest() { mixin(MGF("mGetDirectionalDest", "Function UTGame.UTCTFHUD.GetDirectionalDest")); }
		}
	}
	@property final auto ref
	{
		UTGameReplicationInfo.EFlagState FlagStates() { mixin(MGPC("UTGameReplicationInfo.EFlagState", 2748)); }
		UTCTFBase FlagBases() { mixin(MGPC("UTCTFBase", 2740)); }
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
	Actor GetDirectionalDest(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDirectionalDest, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}

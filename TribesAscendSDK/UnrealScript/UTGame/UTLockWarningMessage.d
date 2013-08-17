module UnrealScript.UTGame.UTLockWarningMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface UTLockWarningMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTLockWarningMessage")()); }
	private static __gshared UTLockWarningMessage mDefaultProperties;
	@property final static UTLockWarningMessage DefaultProperties() { mixin(MGDPC!(UTLockWarningMessage, "UTLockWarningMessage UTGame.Default__UTLockWarningMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAnnouncementLevel;
			ScriptFunction mGetString;
			ScriptFunction mGetColor;
		}
		public @property static final
		{
			ScriptFunction AnnouncementLevel() { mixin(MGF!("mAnnouncementLevel", "Function UTGame.UTLockWarningMessage.AnnouncementLevel")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTLockWarningMessage.GetString")()); }
			ScriptFunction GetColor() { mixin(MGF!("mGetColor", "Function UTGame.UTLockWarningMessage.GetColor")()); }
		}
	}
	@property final auto ref
	{
		UObject.Color YellowColor() { mixin(MGPC!("UObject.Color", 128)()); }
		UObject.Color RedColor() { mixin(MGPC!("UObject.Color", 124)()); }
		ScriptString RadarLockString() { mixin(MGPC!("ScriptString", 112)()); }
		ScriptString MissileLockOnString() { mixin(MGPC!("ScriptString", 100)()); }
	}
final:
	static ubyte AnnouncementLevel(ubyte MessageIndex)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = MessageIndex;
		StaticClass.ProcessEvent(Functions.AnnouncementLevel, params.ptr, cast(void*)0);
		return params[1];
	}
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static UObject.Color GetColor(int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[4] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.GetColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[16];
	}
}

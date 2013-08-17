module UnrealScript.TribesGame.TrLockWarningMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface TrLockWarningMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrLockWarningMessage")); }
	private static __gshared TrLockWarningMessage mDefaultProperties;
	@property final static TrLockWarningMessage DefaultProperties() { mixin(MGDPC("TrLockWarningMessage", "TrLockWarningMessage TribesGame.Default__TrLockWarningMessage")); }
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
			ScriptFunction AnnouncementLevel() { mixin(MGF("mAnnouncementLevel", "Function TribesGame.TrLockWarningMessage.AnnouncementLevel")); }
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function TribesGame.TrLockWarningMessage.GetString")); }
			ScriptFunction GetColor() { mixin(MGF("mGetColor", "Function TribesGame.TrLockWarningMessage.GetColor")); }
		}
	}
	@property final auto ref
	{
		UObject.Color YellowColor() { mixin(MGPC("UObject.Color", 128)); }
		UObject.Color RedColor() { mixin(MGPC("UObject.Color", 124)); }
		ScriptString RadarLockString() { mixin(MGPC("ScriptString", 112)); }
		ScriptString MissileLockOnString() { mixin(MGPC("ScriptString", 100)); }
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

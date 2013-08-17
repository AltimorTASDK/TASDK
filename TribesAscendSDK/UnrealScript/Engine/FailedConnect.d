module UnrealScript.Engine.FailedConnect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface FailedConnect : LocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FailedConnect")); }
	private static __gshared FailedConnect mDefaultProperties;
	@property final static FailedConnect DefaultProperties() { mixin(MGDPC("FailedConnect", "FailedConnect Engine.Default__FailedConnect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFailSwitch;
			ScriptFunction mGetString;
		}
		public @property static final
		{
			ScriptFunction GetFailSwitch() { mixin(MGF("mGetFailSwitch", "Function Engine.FailedConnect.GetFailSwitch")); }
			ScriptFunction GetString() { mixin(MGF("mGetString", "Function Engine.FailedConnect.GetString")); }
		}
	}
	@property final auto ref ScriptString FailMessage() { mixin(MGPC("ScriptString", 80)); }
final:
	static int GetFailSwitch(ScriptString FailString)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FailString;
		StaticClass.ProcessEvent(Functions.GetFailSwitch, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
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
}

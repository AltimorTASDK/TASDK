module UnrealScript.TribesGame.TrTimerMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrTimerMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTimerMessage")()); }
	private static __gshared TrTimerMessage mDefaultProperties;
	@property final static TrTimerMessage DefaultProperties() { mixin(MGDPC!(TrTimerMessage, "TrTimerMessage TribesGame.Default__TrTimerMessage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrTimerMessage.GetString")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function TribesGame.TrTimerMessage.ClientReceive")()); }
		}
	}
	@property final auto ref
	{
		ScriptString TimerMessage() { mixin(MGPC!(ScriptString, 116)()); }
		SoundCue m_sOneMinuteWarningBE() { mixin(MGPC!(SoundCue, 112)()); }
		SoundCue m_sFiveMinuteWarningBE() { mixin(MGPC!(SoundCue, 108)()); }
		SoundCue m_sOneMinuteWarningDS() { mixin(MGPC!(SoundCue, 104)()); }
		SoundCue m_sFiveMinuteWarningDS() { mixin(MGPC!(SoundCue, 100)()); }
	}
final:
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
}

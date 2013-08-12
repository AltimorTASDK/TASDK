module UnrealScript.TribesGame.TrTimerMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrTimerMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTimerMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTimerMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTimerMessage.ClientReceive")); }
		}
	}
	@property final auto ref
	{
		ScriptString TimerMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
		SoundCue m_sOneMinuteWarningBE() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 112); }
		SoundCue m_sFiveMinuteWarningBE() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 108); }
		SoundCue m_sOneMinuteWarningDS() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
		SoundCue m_sFiveMinuteWarningDS() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
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

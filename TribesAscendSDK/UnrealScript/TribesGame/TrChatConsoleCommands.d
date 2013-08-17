module UnrealScript.TribesGame.TrChatConsoleCommands;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrChatConsoleCommands : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrChatConsoleCommands")); }
	private static __gshared TrChatConsoleCommands mDefaultProperties;
	@property final static TrChatConsoleCommands DefaultProperties() { mixin(MGDPC("TrChatConsoleCommands", "TrChatConsoleCommands TribesGame.Default__TrChatConsoleCommands")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mChatConsoleCommand;
			ScriptFunction mReportPlayer;
			ScriptFunction mSay;
			ScriptFunction mTeamSay;
			ScriptFunction mMute;
			ScriptFunction mUnmute;
			ScriptFunction mVotekick;
			ScriptFunction mReport;
			ScriptFunction mTell;
			ScriptFunction mExit;
			ScriptFunction mQuit;
			ScriptFunction mGiveCredits;
			ScriptFunction mSC;
			ScriptFunction mSendCtrlRequest;
			ScriptFunction mSendGameRequest;
			ScriptFunction mSpecList;
		}
		public @property static final
		{
			ScriptFunction ChatConsoleCommand() { mixin(MGF("mChatConsoleCommand", "Function TribesGame.TrChatConsoleCommands.ChatConsoleCommand")); }
			ScriptFunction ReportPlayer() { mixin(MGF("mReportPlayer", "Function TribesGame.TrChatConsoleCommands.ReportPlayer")); }
			ScriptFunction Say() { mixin(MGF("mSay", "Function TribesGame.TrChatConsoleCommands.Say")); }
			ScriptFunction TeamSay() { mixin(MGF("mTeamSay", "Function TribesGame.TrChatConsoleCommands.TeamSay")); }
			ScriptFunction Mute() { mixin(MGF("mMute", "Function TribesGame.TrChatConsoleCommands.Mute")); }
			ScriptFunction Unmute() { mixin(MGF("mUnmute", "Function TribesGame.TrChatConsoleCommands.Unmute")); }
			ScriptFunction Votekick() { mixin(MGF("mVotekick", "Function TribesGame.TrChatConsoleCommands.Votekick")); }
			ScriptFunction Report() { mixin(MGF("mReport", "Function TribesGame.TrChatConsoleCommands.Report")); }
			ScriptFunction Tell() { mixin(MGF("mTell", "Function TribesGame.TrChatConsoleCommands.Tell")); }
			ScriptFunction Exit() { mixin(MGF("mExit", "Function TribesGame.TrChatConsoleCommands.Exit")); }
			ScriptFunction Quit() { mixin(MGF("mQuit", "Function TribesGame.TrChatConsoleCommands.Quit")); }
			ScriptFunction GiveCredits() { mixin(MGF("mGiveCredits", "Function TribesGame.TrChatConsoleCommands.GiveCredits")); }
			ScriptFunction SC() { mixin(MGF("mSC", "Function TribesGame.TrChatConsoleCommands.SC")); }
			ScriptFunction SendCtrlRequest() { mixin(MGF("mSendCtrlRequest", "Function TribesGame.TrChatConsoleCommands.SendCtrlRequest")); }
			ScriptFunction SendGameRequest() { mixin(MGF("mSendGameRequest", "Function TribesGame.TrChatConsoleCommands.SendGameRequest")); }
			ScriptFunction SpecList() { mixin(MGF("mSpecList", "Function TribesGame.TrChatConsoleCommands.SpecList")); }
		}
	}
final:
	void ChatConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChatConsoleCommand, params.ptr, cast(void*)0);
	}
	void ReportPlayer(ScriptString PlayerName, ScriptString Reason)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReportPlayer, params.ptr, cast(void*)0);
	}
	void Say(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.Say, params.ptr, cast(void*)0);
	}
	void TeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamSay, params.ptr, cast(void*)0);
	}
	void Mute(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Mute, params.ptr, cast(void*)0);
	}
	void Unmute(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Unmute, params.ptr, cast(void*)0);
	}
	void Votekick(ScriptString PlayerName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Votekick, params.ptr, cast(void*)0);
	}
	void Report(ScriptString PlayerName, ScriptString Reason)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.Report, params.ptr, cast(void*)0);
	}
	void Tell(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tell, params.ptr, cast(void*)0);
	}
	void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Exit, cast(void*)0, cast(void*)0);
	}
	void Quit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Quit, cast(void*)0, cast(void*)0);
	}
	void GiveCredits(int Count)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveCredits, params.ptr, cast(void*)0);
	}
	void SC(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SC, params.ptr, cast(void*)0);
	}
	void SendCtrlRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendCtrlRequest, params.ptr, cast(void*)0);
	}
	void SendGameRequest(ScriptString fsRequest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = fsRequest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendGameRequest, params.ptr, cast(void*)0);
	}
	void SpecList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecList, cast(void*)0, cast(void*)0);
	}
}

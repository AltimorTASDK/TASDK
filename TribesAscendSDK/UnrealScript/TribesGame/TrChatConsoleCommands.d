module UnrealScript.TribesGame.TrChatConsoleCommands;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrChatConsoleCommands : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrChatConsoleCommands")); }
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
			ScriptFunction ChatConsoleCommand() { return mChatConsoleCommand ? mChatConsoleCommand : (mChatConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.ChatConsoleCommand")); }
			ScriptFunction ReportPlayer() { return mReportPlayer ? mReportPlayer : (mReportPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.ReportPlayer")); }
			ScriptFunction Say() { return mSay ? mSay : (mSay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Say")); }
			ScriptFunction TeamSay() { return mTeamSay ? mTeamSay : (mTeamSay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.TeamSay")); }
			ScriptFunction Mute() { return mMute ? mMute : (mMute = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Mute")); }
			ScriptFunction Unmute() { return mUnmute ? mUnmute : (mUnmute = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Unmute")); }
			ScriptFunction Votekick() { return mVotekick ? mVotekick : (mVotekick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Votekick")); }
			ScriptFunction Report() { return mReport ? mReport : (mReport = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Report")); }
			ScriptFunction Tell() { return mTell ? mTell : (mTell = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Tell")); }
			ScriptFunction Exit() { return mExit ? mExit : (mExit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Exit")); }
			ScriptFunction Quit() { return mQuit ? mQuit : (mQuit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.Quit")); }
			ScriptFunction GiveCredits() { return mGiveCredits ? mGiveCredits : (mGiveCredits = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.GiveCredits")); }
			ScriptFunction SC() { return mSC ? mSC : (mSC = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.SC")); }
			ScriptFunction SendCtrlRequest() { return mSendCtrlRequest ? mSendCtrlRequest : (mSendCtrlRequest = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.SendCtrlRequest")); }
			ScriptFunction SendGameRequest() { return mSendGameRequest ? mSendGameRequest : (mSendGameRequest = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.SendGameRequest")); }
			ScriptFunction SpecList() { return mSpecList ? mSpecList : (mSpecList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrChatConsoleCommands.SpecList")); }
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

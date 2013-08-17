module UnrealScript.Engine.OnlineGameSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSettings : Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineGameSettings")()); }
	private static __gshared OnlineGameSettings mDefaultProperties;
	@property final static OnlineGameSettings DefaultProperties() { mixin(MGDPC!(OnlineGameSettings, "OnlineGameSettings Engine.Default__OnlineGameSettings")()); }
	@property final
	{
		auto ref
		{
			int NumOpenPrivateConnections() { mixin(MGPC!(int, 120)()); }
			int NumOpenPublicConnections() { mixin(MGPC!(int, 116)()); }
			OnlineSubsystem.EOnlineGameState GameState() { mixin(MGPC!(OnlineSubsystem.EOnlineGameState, 164)()); }
			OnlineSubsystem.UniqueNetId OwningPlayerId() { mixin(MGPC!(OnlineSubsystem.UniqueNetId, 148)()); }
			int NumPublicConnections() { mixin(MGPC!(int, 108)()); }
			int BuildUniqueId() { mixin(MGPC!(int, 168)()); }
			float MatchQuality() { mixin(MGPC!(float, 160)()); }
			int PingInMs() { mixin(MGPC!(int, 156)()); }
			ScriptString OwningPlayerName() { mixin(MGPC!(ScriptString, 136)()); }
			QWord ServerNonce() { mixin(MGPC!(QWord, 124)()); }
			int NumPrivateConnections() { mixin(MGPC!(int, 112)()); }
		}
		bool bUsesArbitration() { mixin(MGBPC!(132, 0x100)()); }
		bool bUsesArbitration(bool val) { mixin(MSBPC!(132, 0x100)()); }
		bool bIsLanMatch() { mixin(MGBPC!(132, 0x2)()); }
		bool bIsLanMatch(bool val) { mixin(MSBPC!(132, 0x2)()); }
		bool bUsesStats() { mixin(MGBPC!(132, 0x4)()); }
		bool bUsesStats(bool val) { mixin(MSBPC!(132, 0x4)()); }
		bool bHasSkillUpdateInProgress() { mixin(MGBPC!(132, 0x1000)()); }
		bool bHasSkillUpdateInProgress(bool val) { mixin(MSBPC!(132, 0x1000)()); }
		bool bIsDedicated() { mixin(MGBPC!(132, 0x800)()); }
		bool bIsDedicated(bool val) { mixin(MSBPC!(132, 0x800)()); }
		bool bWasFromInvite() { mixin(MGBPC!(132, 0x400)()); }
		bool bWasFromInvite(bool val) { mixin(MSBPC!(132, 0x400)()); }
		bool bAntiCheatProtected() { mixin(MGBPC!(132, 0x200)()); }
		bool bAntiCheatProtected(bool val) { mixin(MSBPC!(132, 0x200)()); }
		bool bAllowJoinViaPresenceFriendsOnly() { mixin(MGBPC!(132, 0x80)()); }
		bool bAllowJoinViaPresenceFriendsOnly(bool val) { mixin(MSBPC!(132, 0x80)()); }
		bool bAllowJoinViaPresence() { mixin(MGBPC!(132, 0x40)()); }
		bool bAllowJoinViaPresence(bool val) { mixin(MSBPC!(132, 0x40)()); }
		bool bUsesPresence() { mixin(MGBPC!(132, 0x20)()); }
		bool bUsesPresence(bool val) { mixin(MSBPC!(132, 0x20)()); }
		bool bAllowInvites() { mixin(MGBPC!(132, 0x10)()); }
		bool bAllowInvites(bool val) { mixin(MSBPC!(132, 0x10)()); }
		bool bAllowJoinInProgress() { mixin(MGBPC!(132, 0x8)()); }
		bool bAllowJoinInProgress(bool val) { mixin(MSBPC!(132, 0x8)()); }
		bool bShouldAdvertise() { mixin(MGBPC!(132, 0x1)()); }
		bool bShouldAdvertise(bool val) { mixin(MSBPC!(132, 0x1)()); }
	}
}

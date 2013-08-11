module UnrealScript.Engine.OnlineGameSettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSettings : Settings
{
public extern(D):
	@property final
	{
		auto ref
		{
			int NumOpenPrivateConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			int NumOpenPublicConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			OnlineSubsystem.EOnlineGameState GameState() { return *cast(OnlineSubsystem.EOnlineGameState*)(cast(size_t)cast(void*)this + 164); }
			OnlineSubsystem.UniqueNetId OwningPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 148); }
			int NumPublicConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int BuildUniqueId() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			float MatchQuality() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			int PingInMs() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			ScriptString OwningPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			QWord ServerNonce() { return *cast(QWord*)(cast(size_t)cast(void*)this + 124); }
			int NumPrivateConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		}
		bool bUsesArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x100) != 0; }
		bool bUsesArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x100; } return val; }
		bool bIsLanMatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
		bool bIsLanMatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
		bool bUsesStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x4) != 0; }
		bool bUsesStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x4; } return val; }
		bool bHasSkillUpdateInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1000) != 0; }
		bool bHasSkillUpdateInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1000; } return val; }
		bool bIsDedicated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x800) != 0; }
		bool bIsDedicated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x800; } return val; }
		bool bWasFromInvite() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x400) != 0; }
		bool bWasFromInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x400; } return val; }
		bool bAntiCheatProtected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x200) != 0; }
		bool bAntiCheatProtected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x200; } return val; }
		bool bAllowJoinViaPresenceFriendsOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x80) != 0; }
		bool bAllowJoinViaPresenceFriendsOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x80; } return val; }
		bool bAllowJoinViaPresence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x40) != 0; }
		bool bAllowJoinViaPresence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x40; } return val; }
		bool bUsesPresence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x20) != 0; }
		bool bUsesPresence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x20; } return val; }
		bool bAllowInvites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x10) != 0; }
		bool bAllowInvites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x10; } return val; }
		bool bAllowJoinInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x8) != 0; }
		bool bAllowJoinInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x8; } return val; }
		bool bShouldAdvertise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bShouldAdvertise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}

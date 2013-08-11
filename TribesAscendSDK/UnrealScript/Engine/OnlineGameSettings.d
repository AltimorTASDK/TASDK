module UnrealScript.Engine.OnlineGameSettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSettings : Settings
{
	public @property final bool bUsesArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x100) != 0; }
	public @property final bool bUsesArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x100; } return val; }
	public @property final auto ref int NumOpenPrivateConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int NumOpenPublicConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref OnlineSubsystem.EOnlineGameState GameState() { return *cast(OnlineSubsystem.EOnlineGameState*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref OnlineSubsystem.UniqueNetId OwningPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bIsLanMatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
	public @property final bool bIsLanMatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
	public @property final bool bUsesStats() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x4) != 0; }
	public @property final bool bUsesStats(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x4; } return val; }
	public @property final auto ref int NumPublicConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int BuildUniqueId() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float MatchQuality() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int PingInMs() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString OwningPlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool bHasSkillUpdateInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1000) != 0; }
	public @property final bool bHasSkillUpdateInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1000; } return val; }
	public @property final bool bIsDedicated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x800) != 0; }
	public @property final bool bIsDedicated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x800; } return val; }
	public @property final bool bWasFromInvite() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x400) != 0; }
	public @property final bool bWasFromInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x400; } return val; }
	public @property final bool bAntiCheatProtected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x200) != 0; }
	public @property final bool bAntiCheatProtected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x200; } return val; }
	public @property final bool bAllowJoinViaPresenceFriendsOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x80) != 0; }
	public @property final bool bAllowJoinViaPresenceFriendsOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x80; } return val; }
	public @property final bool bAllowJoinViaPresence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x40) != 0; }
	public @property final bool bAllowJoinViaPresence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x40; } return val; }
	public @property final bool bUsesPresence() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x20) != 0; }
	public @property final bool bUsesPresence(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x20; } return val; }
	public @property final bool bAllowInvites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x10) != 0; }
	public @property final bool bAllowInvites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x10; } return val; }
	public @property final bool bAllowJoinInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x8) != 0; }
	public @property final bool bAllowJoinInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x8; } return val; }
	public @property final bool bShouldAdvertise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool bShouldAdvertise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	public @property final auto ref QWord ServerNonce() { return *cast(QWord*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int NumPrivateConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
}

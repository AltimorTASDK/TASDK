module UnrealScript.TribesGame.TrMapMusicInfo;

import UnrealScript.Engine.SoundCue;
import UnrealScript.UDKBase.UDKMapMusicInfo;

extern(C++) interface TrMapMusicInfo : UDKMapMusicInfo
{
	struct TrMapStingers
	{
		public @property final auto ref SoundCue TeamRabbitFriendlyPickedUpFlag() { return *cast(SoundCue*)(cast(size_t)&this + 52); }
		private ubyte __TeamRabbitFriendlyPickedUpFlag[4];
		public @property final auto ref SoundCue TeamRabbitEnemyPickedUpFlag() { return *cast(SoundCue*)(cast(size_t)&this + 48); }
		private ubyte __TeamRabbitEnemyPickedUpFlag[4];
		public @property final auto ref SoundCue EnemyFlagDropped() { return *cast(SoundCue*)(cast(size_t)&this + 44); }
		private ubyte __EnemyFlagDropped[4];
		public @property final auto ref SoundCue EnemyFlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 40); }
		private ubyte __EnemyFlagReturned[4];
		public @property final auto ref SoundCue EnemyFlagCaptured() { return *cast(SoundCue*)(cast(size_t)&this + 36); }
		private ubyte __EnemyFlagCaptured[4];
		public @property final auto ref SoundCue EnemyFlagPickedUpFromDropped() { return *cast(SoundCue*)(cast(size_t)&this + 32); }
		private ubyte __EnemyFlagPickedUpFromDropped[4];
		public @property final auto ref SoundCue EnemyFlagPickedUpFromBase() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
		private ubyte __EnemyFlagPickedUpFromBase[4];
		public @property final auto ref SoundCue FriendlyFlagDropped() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
		private ubyte __FriendlyFlagDropped[4];
		public @property final auto ref SoundCue FriendlyFlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
		private ubyte __FriendlyFlagReturned[4];
		public @property final auto ref SoundCue FriendlyFlagCaptured() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
		private ubyte __FriendlyFlagCaptured[4];
		public @property final auto ref SoundCue FriendlyFlagPickedUpFromDropped() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __FriendlyFlagPickedUpFromDropped[4];
		public @property final auto ref SoundCue FriendlyFlagPickedUpFromBase() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __FriendlyFlagPickedUpFromBase[4];
		public @property final auto ref SoundCue PlayerLost() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
		private ubyte __PlayerLost[4];
		public @property final auto ref SoundCue PlayerWon() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		private ubyte __PlayerWon[4];
	}
	struct TrMapMusic
	{
		public @property final auto ref SoundCue AmbientMusic() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
		private ubyte __AmbientMusic[4];
		public @property final auto ref SoundCue TeamLost() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
		private ubyte __TeamLost[4];
		public @property final auto ref SoundCue TeamWon() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
		private ubyte __TeamWon[4];
		public @property final auto ref SoundCue DeathDirge() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
		private ubyte __DeathDirge[4];
		public @property final auto ref SoundCue FlagPossession() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __FlagPossession[4];
		public @property final auto ref SoundCue BattleMusicHigh() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __BattleMusicHigh[4];
		public @property final auto ref SoundCue BattleMusicMed() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
		private ubyte __BattleMusicMed[4];
		public @property final auto ref SoundCue BattleMusicLow() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		private ubyte __BattleMusicLow[4];
	}
	public @property final auto ref TrMapMusicInfo.TrMapStingers m_MapStingers() { return *cast(TrMapMusicInfo.TrMapStingers*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref TrMapMusicInfo.TrMapMusic m_MapMusic() { return *cast(TrMapMusicInfo.TrMapMusic*)(cast(size_t)cast(void*)this + 220); }
}

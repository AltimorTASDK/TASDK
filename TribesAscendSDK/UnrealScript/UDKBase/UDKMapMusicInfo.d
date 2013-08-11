module UnrealScript.UDKBase.UDKMapMusicInfo;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface UDKMapMusicInfo : UObject
{
	enum ECrossfadeType : ubyte
	{
		CFT_BeginningOfMeasure = 0,
		CFT_EndOfMeasure = 1,
		CFT_MAX = 2,
	}
	struct MusicSegment
	{
		public @property final auto ref SoundCue TheCue() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __TheCue[4];
		public @property final auto ref int CrossfadeToMeNumMeasuresDuration() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __CrossfadeToMeNumMeasuresDuration[4];
		public @property final auto ref UDKMapMusicInfo.ECrossfadeType CrossfadeRule() { return *cast(UDKMapMusicInfo.ECrossfadeType*)(cast(size_t)&this + 4); }
		private ubyte __CrossfadeRule[1];
		public @property final auto ref float TempoOverride() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __TempoOverride[4];
	}
	struct StingersForAMap
	{
		public @property final auto ref SoundCue ScoreWinning() { return *cast(SoundCue*)(cast(size_t)&this + 56); }
		private ubyte __ScoreWinning[4];
		public @property final auto ref SoundCue ScoreTie() { return *cast(SoundCue*)(cast(size_t)&this + 52); }
		private ubyte __ScoreTie[4];
		public @property final auto ref SoundCue ScoreLosing() { return *cast(SoundCue*)(cast(size_t)&this + 48); }
		private ubyte __ScoreLosing[4];
		public @property final auto ref SoundCue ReturnFlag() { return *cast(SoundCue*)(cast(size_t)&this + 44); }
		private ubyte __ReturnFlag[4];
		public @property final auto ref SoundCue MultiKill() { return *cast(SoundCue*)(cast(size_t)&this + 40); }
		private ubyte __MultiKill[4];
		public @property final auto ref SoundCue MonsterKill() { return *cast(SoundCue*)(cast(size_t)&this + 36); }
		private ubyte __MonsterKill[4];
		public @property final auto ref SoundCue MajorKill() { return *cast(SoundCue*)(cast(size_t)&this + 32); }
		private ubyte __MajorKill[4];
		public @property final auto ref SoundCue LongKillingSpree() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
		private ubyte __LongKillingSpree[4];
		public @property final auto ref SoundCue Kill() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
		private ubyte __Kill[4];
		public @property final auto ref SoundCue GrabFlag() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
		private ubyte __GrabFlag[4];
		public @property final auto ref SoundCue FlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
		private ubyte __FlagReturned[4];
		public @property final auto ref SoundCue FirstKillingSpree() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __FirstKillingSpree[4];
		public @property final auto ref SoundCue EnemyGrabFlag() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __EnemyGrabFlag[4];
		public @property final auto ref SoundCue DoubleKill() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
		private ubyte __DoubleKill[4];
		public @property final auto ref SoundCue Died() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		private ubyte __Died[4];
	}
	struct MusicForAMap
	{
		public @property final auto ref UDKMapMusicInfo.MusicSegment Victory() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 84); }
		private ubyte __Victory[16];
		public @property final auto ref UDKMapMusicInfo.MusicSegment Tension() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 68); }
		private ubyte __Tension[16];
		public @property final auto ref UDKMapMusicInfo.MusicSegment Suspense() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 52); }
		private ubyte __Suspense[16];
		public @property final auto ref UDKMapMusicInfo.MusicSegment Intro() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 36); }
		private ubyte __Intro[16];
		public @property final auto ref UDKMapMusicInfo.MusicSegment Ambient() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 20); }
		private ubyte __Ambient[16];
		public @property final auto ref UDKMapMusicInfo.MusicSegment Action() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 4); }
		private ubyte __Action[16];
		public @property final auto ref float Tempo() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Tempo[4];
	}
	public @property final auto ref UDKMapMusicInfo.StingersForAMap MapStingers() { return *cast(UDKMapMusicInfo.StingersForAMap*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UDKMapMusicInfo.MusicForAMap MapMusic() { return *cast(UDKMapMusicInfo.MusicForAMap*)(cast(size_t)cast(void*)this + 60); }
}

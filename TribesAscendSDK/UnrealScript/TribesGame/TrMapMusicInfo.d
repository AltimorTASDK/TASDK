module UnrealScript.TribesGame.TrMapMusicInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UDKBase.UDKMapMusicInfo;

extern(C++) interface TrMapMusicInfo : UDKMapMusicInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMapMusicInfo")); }
	private static __gshared TrMapMusicInfo mDefaultProperties;
	@property final static TrMapMusicInfo DefaultProperties() { mixin(MGDPC("TrMapMusicInfo", "TrMapMusicInfo TribesGame.Default__TrMapMusicInfo")); }
	struct TrMapStingers
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrMapMusicInfo.TrMapStingers")); }
		@property final auto ref
		{
			SoundCue TeamRabbitFriendlyPickedUpFlag() { mixin(MGPS("SoundCue", 52)); }
			SoundCue TeamRabbitEnemyPickedUpFlag() { mixin(MGPS("SoundCue", 48)); }
			SoundCue EnemyFlagDropped() { mixin(MGPS("SoundCue", 44)); }
			SoundCue EnemyFlagReturned() { mixin(MGPS("SoundCue", 40)); }
			SoundCue EnemyFlagCaptured() { mixin(MGPS("SoundCue", 36)); }
			SoundCue EnemyFlagPickedUpFromDropped() { mixin(MGPS("SoundCue", 32)); }
			SoundCue EnemyFlagPickedUpFromBase() { mixin(MGPS("SoundCue", 28)); }
			SoundCue FriendlyFlagDropped() { mixin(MGPS("SoundCue", 24)); }
			SoundCue FriendlyFlagReturned() { mixin(MGPS("SoundCue", 20)); }
			SoundCue FriendlyFlagCaptured() { mixin(MGPS("SoundCue", 16)); }
			SoundCue FriendlyFlagPickedUpFromDropped() { mixin(MGPS("SoundCue", 12)); }
			SoundCue FriendlyFlagPickedUpFromBase() { mixin(MGPS("SoundCue", 8)); }
			SoundCue PlayerLost() { mixin(MGPS("SoundCue", 4)); }
			SoundCue PlayerWon() { mixin(MGPS("SoundCue", 0)); }
		}
	}
	struct TrMapMusic
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrMapMusicInfo.TrMapMusic")); }
		@property final auto ref
		{
			SoundCue AmbientMusic() { mixin(MGPS("SoundCue", 28)); }
			SoundCue TeamLost() { mixin(MGPS("SoundCue", 24)); }
			SoundCue TeamWon() { mixin(MGPS("SoundCue", 20)); }
			SoundCue DeathDirge() { mixin(MGPS("SoundCue", 16)); }
			SoundCue FlagPossession() { mixin(MGPS("SoundCue", 12)); }
			SoundCue BattleMusicHigh() { mixin(MGPS("SoundCue", 8)); }
			SoundCue BattleMusicMed() { mixin(MGPS("SoundCue", 4)); }
			SoundCue BattleMusicLow() { mixin(MGPS("SoundCue", 0)); }
		}
	}
	@property final auto ref
	{
		TrMapMusicInfo.TrMapStingers m_MapStingers() { mixin(MGPC("TrMapMusicInfo.TrMapStingers", 252)); }
		TrMapMusicInfo.TrMapMusic m_MapMusic() { mixin(MGPC("TrMapMusicInfo.TrMapMusic", 220)); }
	}
}

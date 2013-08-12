module UnrealScript.TribesGame.TrMapMusicInfo;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UDKBase.UDKMapMusicInfo;

extern(C++) interface TrMapMusicInfo : UDKMapMusicInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMapMusicInfo")); }
	private static __gshared TrMapMusicInfo mDefaultProperties;
	@property final static TrMapMusicInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMapMusicInfo)("TrMapMusicInfo TribesGame.Default__TrMapMusicInfo")); }
	struct TrMapStingers
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrMapMusicInfo.TrMapStingers")); }
		@property final auto ref
		{
			SoundCue TeamRabbitFriendlyPickedUpFlag() { return *cast(SoundCue*)(cast(size_t)&this + 52); }
			SoundCue TeamRabbitEnemyPickedUpFlag() { return *cast(SoundCue*)(cast(size_t)&this + 48); }
			SoundCue EnemyFlagDropped() { return *cast(SoundCue*)(cast(size_t)&this + 44); }
			SoundCue EnemyFlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 40); }
			SoundCue EnemyFlagCaptured() { return *cast(SoundCue*)(cast(size_t)&this + 36); }
			SoundCue EnemyFlagPickedUpFromDropped() { return *cast(SoundCue*)(cast(size_t)&this + 32); }
			SoundCue EnemyFlagPickedUpFromBase() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
			SoundCue FriendlyFlagDropped() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
			SoundCue FriendlyFlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
			SoundCue FriendlyFlagCaptured() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
			SoundCue FriendlyFlagPickedUpFromDropped() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			SoundCue FriendlyFlagPickedUpFromBase() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			SoundCue PlayerLost() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
			SoundCue PlayerWon() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		}
	}
	struct TrMapMusic
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrMapMusicInfo.TrMapMusic")); }
		@property final auto ref
		{
			SoundCue AmbientMusic() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
			SoundCue TeamLost() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
			SoundCue TeamWon() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
			SoundCue DeathDirge() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
			SoundCue FlagPossession() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			SoundCue BattleMusicHigh() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			SoundCue BattleMusicMed() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
			SoundCue BattleMusicLow() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		TrMapMusicInfo.TrMapStingers m_MapStingers() { return *cast(TrMapMusicInfo.TrMapStingers*)(cast(size_t)cast(void*)this + 252); }
		TrMapMusicInfo.TrMapMusic m_MapMusic() { return *cast(TrMapMusicInfo.TrMapMusic*)(cast(size_t)cast(void*)this + 220); }
	}
}

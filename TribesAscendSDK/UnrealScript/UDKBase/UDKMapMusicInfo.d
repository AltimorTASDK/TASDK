module UnrealScript.UDKBase.UDKMapMusicInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface UDKMapMusicInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKMapMusicInfo")()); }
	private static __gshared UDKMapMusicInfo mDefaultProperties;
	@property final static UDKMapMusicInfo DefaultProperties() { mixin(MGDPC!(UDKMapMusicInfo, "UDKMapMusicInfo UDKBase.Default__UDKMapMusicInfo")()); }
	enum ECrossfadeType : ubyte
	{
		CFT_BeginningOfMeasure = 0,
		CFT_EndOfMeasure = 1,
		CFT_MAX = 2,
	}
	struct MusicSegment
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKMapMusicInfo.MusicSegment")()); }
		@property final auto ref
		{
			SoundCue TheCue() { mixin(MGPS!(SoundCue, 12)()); }
			int CrossfadeToMeNumMeasuresDuration() { mixin(MGPS!(int, 8)()); }
			UDKMapMusicInfo.ECrossfadeType CrossfadeRule() { mixin(MGPS!(UDKMapMusicInfo.ECrossfadeType, 4)()); }
			float TempoOverride() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct StingersForAMap
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKMapMusicInfo.StingersForAMap")()); }
		@property final auto ref
		{
			SoundCue ScoreWinning() { mixin(MGPS!(SoundCue, 56)()); }
			SoundCue ScoreTie() { mixin(MGPS!(SoundCue, 52)()); }
			SoundCue ScoreLosing() { mixin(MGPS!(SoundCue, 48)()); }
			SoundCue ReturnFlag() { mixin(MGPS!(SoundCue, 44)()); }
			SoundCue MultiKill() { mixin(MGPS!(SoundCue, 40)()); }
			SoundCue MonsterKill() { mixin(MGPS!(SoundCue, 36)()); }
			SoundCue MajorKill() { mixin(MGPS!(SoundCue, 32)()); }
			SoundCue LongKillingSpree() { mixin(MGPS!(SoundCue, 28)()); }
			SoundCue Kill() { mixin(MGPS!(SoundCue, 24)()); }
			SoundCue GrabFlag() { mixin(MGPS!(SoundCue, 20)()); }
			SoundCue FlagReturned() { mixin(MGPS!(SoundCue, 16)()); }
			SoundCue FirstKillingSpree() { mixin(MGPS!(SoundCue, 12)()); }
			SoundCue EnemyGrabFlag() { mixin(MGPS!(SoundCue, 8)()); }
			SoundCue DoubleKill() { mixin(MGPS!(SoundCue, 4)()); }
			SoundCue Died() { mixin(MGPS!(SoundCue, 0)()); }
		}
	}
	struct MusicForAMap
	{
		private ubyte __buffer__[100];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKMapMusicInfo.MusicForAMap")()); }
		@property final auto ref
		{
			UDKMapMusicInfo.MusicSegment Victory() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 84)()); }
			UDKMapMusicInfo.MusicSegment Tension() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 68)()); }
			UDKMapMusicInfo.MusicSegment Suspense() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 52)()); }
			UDKMapMusicInfo.MusicSegment Intro() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 36)()); }
			UDKMapMusicInfo.MusicSegment Ambient() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 20)()); }
			UDKMapMusicInfo.MusicSegment Action() { mixin(MGPS!(UDKMapMusicInfo.MusicSegment, 4)()); }
			float Tempo() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final auto ref
	{
		UDKMapMusicInfo.StingersForAMap MapStingers() { mixin(MGPC!(UDKMapMusicInfo.StingersForAMap, 160)()); }
		UDKMapMusicInfo.MusicForAMap MapMusic() { mixin(MGPC!(UDKMapMusicInfo.MusicForAMap, 60)()); }
	}
}

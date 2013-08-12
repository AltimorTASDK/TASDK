module UnrealScript.UDKBase.UDKMapMusicInfo;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;

extern(C++) interface UDKMapMusicInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKMapMusicInfo")); }
	private static __gshared UDKMapMusicInfo mDefaultProperties;
	@property final static UDKMapMusicInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKMapMusicInfo)("UDKMapMusicInfo UDKBase.Default__UDKMapMusicInfo")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKMapMusicInfo.MusicSegment")); }
		@property final auto ref
		{
			SoundCue TheCue() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			int CrossfadeToMeNumMeasuresDuration() { return *cast(int*)(cast(size_t)&this + 8); }
			UDKMapMusicInfo.ECrossfadeType CrossfadeRule() { return *cast(UDKMapMusicInfo.ECrossfadeType*)(cast(size_t)&this + 4); }
			float TempoOverride() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct StingersForAMap
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKMapMusicInfo.StingersForAMap")); }
		@property final auto ref
		{
			SoundCue ScoreWinning() { return *cast(SoundCue*)(cast(size_t)&this + 56); }
			SoundCue ScoreTie() { return *cast(SoundCue*)(cast(size_t)&this + 52); }
			SoundCue ScoreLosing() { return *cast(SoundCue*)(cast(size_t)&this + 48); }
			SoundCue ReturnFlag() { return *cast(SoundCue*)(cast(size_t)&this + 44); }
			SoundCue MultiKill() { return *cast(SoundCue*)(cast(size_t)&this + 40); }
			SoundCue MonsterKill() { return *cast(SoundCue*)(cast(size_t)&this + 36); }
			SoundCue MajorKill() { return *cast(SoundCue*)(cast(size_t)&this + 32); }
			SoundCue LongKillingSpree() { return *cast(SoundCue*)(cast(size_t)&this + 28); }
			SoundCue Kill() { return *cast(SoundCue*)(cast(size_t)&this + 24); }
			SoundCue GrabFlag() { return *cast(SoundCue*)(cast(size_t)&this + 20); }
			SoundCue FlagReturned() { return *cast(SoundCue*)(cast(size_t)&this + 16); }
			SoundCue FirstKillingSpree() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
			SoundCue EnemyGrabFlag() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			SoundCue DoubleKill() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
			SoundCue Died() { return *cast(SoundCue*)(cast(size_t)&this + 0); }
		}
	}
	struct MusicForAMap
	{
		private ubyte __buffer__[100];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKMapMusicInfo.MusicForAMap")); }
		@property final auto ref
		{
			UDKMapMusicInfo.MusicSegment Victory() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 84); }
			UDKMapMusicInfo.MusicSegment Tension() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 68); }
			UDKMapMusicInfo.MusicSegment Suspense() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 52); }
			UDKMapMusicInfo.MusicSegment Intro() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 36); }
			UDKMapMusicInfo.MusicSegment Ambient() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 20); }
			UDKMapMusicInfo.MusicSegment Action() { return *cast(UDKMapMusicInfo.MusicSegment*)(cast(size_t)&this + 4); }
			float Tempo() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		UDKMapMusicInfo.StingersForAMap MapStingers() { return *cast(UDKMapMusicInfo.StingersForAMap*)(cast(size_t)cast(void*)this + 160); }
		UDKMapMusicInfo.MusicForAMap MapMusic() { return *cast(UDKMapMusicInfo.MusicForAMap*)(cast(size_t)cast(void*)this + 60); }
	}
}

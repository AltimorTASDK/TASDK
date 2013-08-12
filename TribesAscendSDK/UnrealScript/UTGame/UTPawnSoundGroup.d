module UnrealScript.UTGame.UTPawnSoundGroup;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface UTPawnSoundGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPawnSoundGroup")); }
	private static __gshared UTPawnSoundGroup mDefaultProperties;
	@property final static UTPawnSoundGroup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTPawnSoundGroup)("UTPawnSoundGroup UTGame.Default__UTPawnSoundGroup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFootstepSound;
			ScriptFunction mGetLandSound;
			ScriptFunction mGetJumpSound;
			ScriptFunction mPlayInstagibSound;
			ScriptFunction mPlayBulletImpact;
			ScriptFunction mPlayCrushedSound;
			ScriptFunction mPlayBodyExplosion;
			ScriptFunction mPlayDodgeSound;
			ScriptFunction mPlayDoubleJumpSound;
			ScriptFunction mPlayJumpSound;
			ScriptFunction mPlayLandSound;
			ScriptFunction mPlayFallingDamageLandSound;
			ScriptFunction mPlayDyingSound;
			ScriptFunction mPlayTakeHitSound;
			ScriptFunction mPlayGibSound;
			ScriptFunction mPlayGaspSound;
			ScriptFunction mPlayDrownSound;
		}
		public @property static final
		{
			ScriptFunction GetFootstepSound() { return mGetFootstepSound ? mGetFootstepSound : (mGetFootstepSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.GetFootstepSound")); }
			ScriptFunction GetLandSound() { return mGetLandSound ? mGetLandSound : (mGetLandSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.GetLandSound")); }
			ScriptFunction GetJumpSound() { return mGetJumpSound ? mGetJumpSound : (mGetJumpSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.GetJumpSound")); }
			ScriptFunction PlayInstagibSound() { return mPlayInstagibSound ? mPlayInstagibSound : (mPlayInstagibSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayInstagibSound")); }
			ScriptFunction PlayBulletImpact() { return mPlayBulletImpact ? mPlayBulletImpact : (mPlayBulletImpact = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayBulletImpact")); }
			ScriptFunction PlayCrushedSound() { return mPlayCrushedSound ? mPlayCrushedSound : (mPlayCrushedSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayCrushedSound")); }
			ScriptFunction PlayBodyExplosion() { return mPlayBodyExplosion ? mPlayBodyExplosion : (mPlayBodyExplosion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayBodyExplosion")); }
			ScriptFunction PlayDodgeSound() { return mPlayDodgeSound ? mPlayDodgeSound : (mPlayDodgeSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayDodgeSound")); }
			ScriptFunction PlayDoubleJumpSound() { return mPlayDoubleJumpSound ? mPlayDoubleJumpSound : (mPlayDoubleJumpSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayDoubleJumpSound")); }
			ScriptFunction PlayJumpSound() { return mPlayJumpSound ? mPlayJumpSound : (mPlayJumpSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayJumpSound")); }
			ScriptFunction PlayLandSound() { return mPlayLandSound ? mPlayLandSound : (mPlayLandSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayLandSound")); }
			ScriptFunction PlayFallingDamageLandSound() { return mPlayFallingDamageLandSound ? mPlayFallingDamageLandSound : (mPlayFallingDamageLandSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayFallingDamageLandSound")); }
			ScriptFunction PlayDyingSound() { return mPlayDyingSound ? mPlayDyingSound : (mPlayDyingSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayDyingSound")); }
			ScriptFunction PlayTakeHitSound() { return mPlayTakeHitSound ? mPlayTakeHitSound : (mPlayTakeHitSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayTakeHitSound")); }
			ScriptFunction PlayGibSound() { return mPlayGibSound ? mPlayGibSound : (mPlayGibSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayGibSound")); }
			ScriptFunction PlayGaspSound() { return mPlayGaspSound ? mPlayGaspSound : (mPlayGaspSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayGaspSound")); }
			ScriptFunction PlayDrownSound() { return mPlayDrownSound ? mPlayDrownSound : (mPlayDrownSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPawnSoundGroup.PlayDrownSound")); }
		}
	}
	struct FootstepSoundInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTPawnSoundGroup.FootstepSoundInfo")); }
		@property final auto ref
		{
			SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) FootstepSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 108); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) JumpingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 124); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) LandingSounds() { return *cast(ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)*)(cast(size_t)cast(void*)this + 136); }
		SoundCue InstagibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 164); }
		SoundCue BodyExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 160); }
		SoundCue CrushedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 156); }
		SoundCue BulletImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 152); }
		SoundCue DefaultLandingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 148); }
		SoundCue DefaultFootstepSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
		SoundCue GaspSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
		SoundCue DrownSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
		SoundCue GibSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 96); }
		SoundCue HitSounds() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 84); }
		SoundCue DyingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 80); }
		SoundCue FallingDamageLandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 76); }
		SoundCue LandSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 72); }
		SoundCue DefaultJumpingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 68); }
		SoundCue DoubleJumpSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 64); }
		SoundCue DodgeSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	static SoundCue GetFootstepSound(int FootDown, ScriptName MaterialType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = FootDown;
		*cast(ScriptName*)&params[4] = MaterialType;
		StaticClass.ProcessEvent(Functions.GetFootstepSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[12];
	}
	static SoundCue GetLandSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		StaticClass.ProcessEvent(Functions.GetLandSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	static SoundCue GetJumpSound(ScriptName MaterialType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MaterialType;
		StaticClass.ProcessEvent(Functions.GetJumpSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	static void PlayInstagibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayInstagibSound, params.ptr, cast(void*)0);
	}
	static void PlayBulletImpact(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayBulletImpact, params.ptr, cast(void*)0);
	}
	static void PlayCrushedSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayCrushedSound, params.ptr, cast(void*)0);
	}
	static void PlayBodyExplosion(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayBodyExplosion, params.ptr, cast(void*)0);
	}
	static void PlayDodgeSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayDodgeSound, params.ptr, cast(void*)0);
	}
	static void PlayDoubleJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayDoubleJumpSound, params.ptr, cast(void*)0);
	}
	static void PlayJumpSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayJumpSound, params.ptr, cast(void*)0);
	}
	static void PlayLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayLandSound, params.ptr, cast(void*)0);
	}
	static void PlayFallingDamageLandSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayFallingDamageLandSound, params.ptr, cast(void*)0);
	}
	static void PlayDyingSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayDyingSound, params.ptr, cast(void*)0);
	}
	static void PlayTakeHitSound(Pawn P, int Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = Damage;
		StaticClass.ProcessEvent(Functions.PlayTakeHitSound, params.ptr, cast(void*)0);
	}
	static void PlayGibSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayGibSound, params.ptr, cast(void*)0);
	}
	static void PlayGaspSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayGaspSound, params.ptr, cast(void*)0);
	}
	static void PlayDrownSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayDrownSound, params.ptr, cast(void*)0);
	}
}

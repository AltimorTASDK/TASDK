module UnrealScript.UTGame.UTPawnSoundGroup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;

extern(C++) interface UTPawnSoundGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPawnSoundGroup")); }
	private static __gshared UTPawnSoundGroup mDefaultProperties;
	@property final static UTPawnSoundGroup DefaultProperties() { mixin(MGDPC("UTPawnSoundGroup", "UTPawnSoundGroup UTGame.Default__UTPawnSoundGroup")); }
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
			ScriptFunction GetFootstepSound() { mixin(MGF("mGetFootstepSound", "Function UTGame.UTPawnSoundGroup.GetFootstepSound")); }
			ScriptFunction GetLandSound() { mixin(MGF("mGetLandSound", "Function UTGame.UTPawnSoundGroup.GetLandSound")); }
			ScriptFunction GetJumpSound() { mixin(MGF("mGetJumpSound", "Function UTGame.UTPawnSoundGroup.GetJumpSound")); }
			ScriptFunction PlayInstagibSound() { mixin(MGF("mPlayInstagibSound", "Function UTGame.UTPawnSoundGroup.PlayInstagibSound")); }
			ScriptFunction PlayBulletImpact() { mixin(MGF("mPlayBulletImpact", "Function UTGame.UTPawnSoundGroup.PlayBulletImpact")); }
			ScriptFunction PlayCrushedSound() { mixin(MGF("mPlayCrushedSound", "Function UTGame.UTPawnSoundGroup.PlayCrushedSound")); }
			ScriptFunction PlayBodyExplosion() { mixin(MGF("mPlayBodyExplosion", "Function UTGame.UTPawnSoundGroup.PlayBodyExplosion")); }
			ScriptFunction PlayDodgeSound() { mixin(MGF("mPlayDodgeSound", "Function UTGame.UTPawnSoundGroup.PlayDodgeSound")); }
			ScriptFunction PlayDoubleJumpSound() { mixin(MGF("mPlayDoubleJumpSound", "Function UTGame.UTPawnSoundGroup.PlayDoubleJumpSound")); }
			ScriptFunction PlayJumpSound() { mixin(MGF("mPlayJumpSound", "Function UTGame.UTPawnSoundGroup.PlayJumpSound")); }
			ScriptFunction PlayLandSound() { mixin(MGF("mPlayLandSound", "Function UTGame.UTPawnSoundGroup.PlayLandSound")); }
			ScriptFunction PlayFallingDamageLandSound() { mixin(MGF("mPlayFallingDamageLandSound", "Function UTGame.UTPawnSoundGroup.PlayFallingDamageLandSound")); }
			ScriptFunction PlayDyingSound() { mixin(MGF("mPlayDyingSound", "Function UTGame.UTPawnSoundGroup.PlayDyingSound")); }
			ScriptFunction PlayTakeHitSound() { mixin(MGF("mPlayTakeHitSound", "Function UTGame.UTPawnSoundGroup.PlayTakeHitSound")); }
			ScriptFunction PlayGibSound() { mixin(MGF("mPlayGibSound", "Function UTGame.UTPawnSoundGroup.PlayGibSound")); }
			ScriptFunction PlayGaspSound() { mixin(MGF("mPlayGaspSound", "Function UTGame.UTPawnSoundGroup.PlayGaspSound")); }
			ScriptFunction PlayDrownSound() { mixin(MGF("mPlayDrownSound", "Function UTGame.UTPawnSoundGroup.PlayDrownSound")); }
		}
	}
	struct FootstepSoundInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTPawnSoundGroup.FootstepSoundInfo")); }
		@property final auto ref
		{
			SoundCue Sound() { mixin(MGPS("SoundCue", 8)); }
			ScriptName MaterialType() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) FootstepSounds() { mixin(MGPC("ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)", 108)); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) JumpingSounds() { mixin(MGPC("ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)", 124)); }
		ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo) LandingSounds() { mixin(MGPC("ScriptArray!(UTPawnSoundGroup.FootstepSoundInfo)", 136)); }
		SoundCue InstagibSound() { mixin(MGPC("SoundCue", 164)); }
		SoundCue BodyExplosionSound() { mixin(MGPC("SoundCue", 160)); }
		SoundCue CrushedSound() { mixin(MGPC("SoundCue", 156)); }
		SoundCue BulletImpactSound() { mixin(MGPC("SoundCue", 152)); }
		SoundCue DefaultLandingSound() { mixin(MGPC("SoundCue", 148)); }
		SoundCue DefaultFootstepSound() { mixin(MGPC("SoundCue", 120)); }
		SoundCue GaspSound() { mixin(MGPC("SoundCue", 104)); }
		SoundCue DrownSound() { mixin(MGPC("SoundCue", 100)); }
		SoundCue GibSound() { mixin(MGPC("SoundCue", 96)); }
		SoundCue HitSounds() { mixin(MGPC("SoundCue", 84)); }
		SoundCue DyingSound() { mixin(MGPC("SoundCue", 80)); }
		SoundCue FallingDamageLandSound() { mixin(MGPC("SoundCue", 76)); }
		SoundCue LandSound() { mixin(MGPC("SoundCue", 72)); }
		SoundCue DefaultJumpingSound() { mixin(MGPC("SoundCue", 68)); }
		SoundCue DoubleJumpSound() { mixin(MGPC("SoundCue", 64)); }
		SoundCue DodgeSound() { mixin(MGPC("SoundCue", 60)); }
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

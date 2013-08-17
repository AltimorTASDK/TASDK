module UnrealScript.TribesGame.TrPawnSoundGroup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPawnSoundGroup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;

extern(C++) interface TrPawnSoundGroup : UTPawnSoundGroup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPawnSoundGroup")()); }
	private static __gshared TrPawnSoundGroup mDefaultProperties;
	@property final static TrPawnSoundGroup DefaultProperties() { mixin(MGDPC!(TrPawnSoundGroup, "TrPawnSoundGroup TribesGame.Default__TrPawnSoundGroup")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayShieldPackActivateSound;
			ScriptFunction mPlayShieldPackDeactivateSound;
			ScriptFunction mPlayStealthPackActivateSound;
			ScriptFunction mPlayStealthPackDeactivateSound;
			ScriptFunction mPlayJammerPackActivateSound;
			ScriptFunction mPlayJammerPackDeactivateSound;
			ScriptFunction mPlayRageActivateSound;
			ScriptFunction mPlayRageDeactivateSound;
			ScriptFunction mPlayDyingSound;
			ScriptFunction mPlayBlinkPackSound;
		}
		public @property static final
		{
			ScriptFunction PlayShieldPackActivateSound() { mixin(MGF!("mPlayShieldPackActivateSound", "Function TribesGame.TrPawnSoundGroup.PlayShieldPackActivateSound")()); }
			ScriptFunction PlayShieldPackDeactivateSound() { mixin(MGF!("mPlayShieldPackDeactivateSound", "Function TribesGame.TrPawnSoundGroup.PlayShieldPackDeactivateSound")()); }
			ScriptFunction PlayStealthPackActivateSound() { mixin(MGF!("mPlayStealthPackActivateSound", "Function TribesGame.TrPawnSoundGroup.PlayStealthPackActivateSound")()); }
			ScriptFunction PlayStealthPackDeactivateSound() { mixin(MGF!("mPlayStealthPackDeactivateSound", "Function TribesGame.TrPawnSoundGroup.PlayStealthPackDeactivateSound")()); }
			ScriptFunction PlayJammerPackActivateSound() { mixin(MGF!("mPlayJammerPackActivateSound", "Function TribesGame.TrPawnSoundGroup.PlayJammerPackActivateSound")()); }
			ScriptFunction PlayJammerPackDeactivateSound() { mixin(MGF!("mPlayJammerPackDeactivateSound", "Function TribesGame.TrPawnSoundGroup.PlayJammerPackDeactivateSound")()); }
			ScriptFunction PlayRageActivateSound() { mixin(MGF!("mPlayRageActivateSound", "Function TribesGame.TrPawnSoundGroup.PlayRageActivateSound")()); }
			ScriptFunction PlayRageDeactivateSound() { mixin(MGF!("mPlayRageDeactivateSound", "Function TribesGame.TrPawnSoundGroup.PlayRageDeactivateSound")()); }
			ScriptFunction PlayDyingSound() { mixin(MGF!("mPlayDyingSound", "Function TribesGame.TrPawnSoundGroup.PlayDyingSound")()); }
			ScriptFunction PlayBlinkPackSound() { mixin(MGF!("mPlayBlinkPackSound", "Function TribesGame.TrPawnSoundGroup.PlayBlinkPackSound")()); }
		}
	}
	@property final auto ref
	{
		SoundCue m_RechargeHealthSound3p() { mixin(MGPC!("SoundCue", 184)()); }
		SoundCue m_ShieldPackLoopSound1p() { mixin(MGPC!("SoundCue", 204)()); }
		SoundCue m_ShieldPackLoopSound3p() { mixin(MGPC!("SoundCue", 208)()); }
		SoundCue m_StealthPackLoopSound1p() { mixin(MGPC!("SoundCue", 228)()); }
		SoundCue m_RageLoopSound1p() { mixin(MGPC!("SoundCue", 276)()); }
		SoundCue m_RageLoopSound3p() { mixin(MGPC!("SoundCue", 280)()); }
		SoundCue m_JammerPackLoopSound1p() { mixin(MGPC!("SoundCue", 252)()); }
		SoundCue m_JetpackLoopSound() { mixin(MGPC!("SoundCue", 168)()); }
		SoundCue m_LowHealthSound() { mixin(MGPC!("SoundCue", 176)()); }
		SoundCue m_RechargeHealthSound() { mixin(MGPC!("SoundCue", 180)()); }
		ScriptArray!(SoundCue) m_DyingSounds() { mixin(MGPC!("ScriptArray!(SoundCue)", 284)()); }
		SoundCue m_BlinkPackSound3p() { mixin(MGPC!("SoundCue", 300)()); }
		SoundCue m_BlinkPackSound1p() { mixin(MGPC!("SoundCue", 296)()); }
		SoundCue m_RageDeactivateSound3p() { mixin(MGPC!("SoundCue", 272)()); }
		SoundCue m_RageDeactivateSound1p() { mixin(MGPC!("SoundCue", 268)()); }
		SoundCue m_RageActivateSound3p() { mixin(MGPC!("SoundCue", 264)()); }
		SoundCue m_RageActivateSound1p() { mixin(MGPC!("SoundCue", 260)()); }
		SoundCue m_JammerPackLoopSound3p() { mixin(MGPC!("SoundCue", 256)()); }
		SoundCue m_JammerPackDeactivateSound3p() { mixin(MGPC!("SoundCue", 248)()); }
		SoundCue m_JammerPackDeactivateSound1p() { mixin(MGPC!("SoundCue", 244)()); }
		SoundCue m_JammerPackActivateSound3p() { mixin(MGPC!("SoundCue", 240)()); }
		SoundCue m_JammerPackActivateSound1p() { mixin(MGPC!("SoundCue", 236)()); }
		SoundCue m_StealthPackLoopSound3p() { mixin(MGPC!("SoundCue", 232)()); }
		SoundCue m_StealthPackDeactivateSound3p() { mixin(MGPC!("SoundCue", 224)()); }
		SoundCue m_StealthPackDeactivateSound1p() { mixin(MGPC!("SoundCue", 220)()); }
		SoundCue m_StealthPackActivateSound3p() { mixin(MGPC!("SoundCue", 216)()); }
		SoundCue m_StealthPackActivateSound1p() { mixin(MGPC!("SoundCue", 212)()); }
		SoundCue m_ShieldPackDeactivateSound3p() { mixin(MGPC!("SoundCue", 200)()); }
		SoundCue m_ShieldPackDeactivateSound1p() { mixin(MGPC!("SoundCue", 196)()); }
		SoundCue m_ShieldPackActivateSound3p() { mixin(MGPC!("SoundCue", 192)()); }
		SoundCue m_ShieldPackActivateSound1p() { mixin(MGPC!("SoundCue", 188)()); }
		SoundCue m_JetpackCooldownSound() { mixin(MGPC!("SoundCue", 172)()); }
	}
final:
	static void PlayShieldPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayShieldPackActivateSound, params.ptr, cast(void*)0);
	}
	static void PlayShieldPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayShieldPackDeactivateSound, params.ptr, cast(void*)0);
	}
	static void PlayStealthPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayStealthPackActivateSound, params.ptr, cast(void*)0);
	}
	static void PlayStealthPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayStealthPackDeactivateSound, params.ptr, cast(void*)0);
	}
	static void PlayJammerPackActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayJammerPackActivateSound, params.ptr, cast(void*)0);
	}
	static void PlayJammerPackDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayJammerPackDeactivateSound, params.ptr, cast(void*)0);
	}
	static void PlayRageActivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayRageActivateSound, params.ptr, cast(void*)0);
	}
	static void PlayRageDeactivateSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayRageDeactivateSound, params.ptr, cast(void*)0);
	}
	static void PlayDyingSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayDyingSound, params.ptr, cast(void*)0);
	}
	static void PlayBlinkPackSound(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		StaticClass.ProcessEvent(Functions.PlayBlinkPackSound, params.ptr, cast(void*)0);
	}
}

module UnrealScript.TribesGame.TrWeaponPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrWeaponPawn : UTWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrWeaponPawn")()); }
	private static __gshared TrWeaponPawn mDefaultProperties;
	@property final static TrWeaponPawn DefaultProperties() { mixin(MGDPC!(TrWeaponPawn, "TrWeaponPawn TribesGame.Default__TrWeaponPawn")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPlayReload;
			ScriptFunction mProcessViewRotation;
			ScriptFunction mClientPlayLoopSound;
			ScriptFunction mPlayLoopingSound;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrWeaponPawn.ReplicatedEvent")()); }
			ScriptFunction PlayReload() { mixin(MGF!("mPlayReload", "Function TribesGame.TrWeaponPawn.PlayReload")()); }
			ScriptFunction ProcessViewRotation() { mixin(MGF!("mProcessViewRotation", "Function TribesGame.TrWeaponPawn.ProcessViewRotation")()); }
			ScriptFunction ClientPlayLoopSound() { mixin(MGF!("mClientPlayLoopSound", "Function TribesGame.TrWeaponPawn.ClientPlayLoopSound")()); }
			ScriptFunction PlayLoopingSound() { mixin(MGF!("mPlayLoopingSound", "Function TribesGame.TrWeaponPawn.PlayLoopingSound")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fCurrentAccuracy() { mixin(MGPC!(float, 1560)()); }
			ubyte r_nFlashReload() { mixin(MGPC!(ubyte, 1564)()); }
			SoundCue r_scFiringLoop() { mixin(MGPC!(SoundCue, 1576)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FiringLoopAudio'!
		}
		bool r_bFiringLoopSound() { mixin(MGBPC!(1572, 0x1)()); }
		bool r_bFiringLoopSound(bool val) { mixin(MSBPC!(1572, 0x1)()); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PlayReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, cast(void*)0, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, ref Rotator out_ViewRotation, ref Rotator out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = out_ViewRotation;
		*cast(Rotator*)&params[16] = out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessViewRotation, params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	void ClientPlayLoopSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientPlayLoopSound, cast(void*)0, cast(void*)0);
	}
	void PlayLoopingSound(SoundCue InSound, bool Play)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSound;
		*cast(bool*)&params[4] = Play;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayLoopingSound, params.ptr, cast(void*)0);
	}
}

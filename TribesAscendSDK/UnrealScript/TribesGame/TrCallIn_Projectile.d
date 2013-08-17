module UnrealScript.TribesGame.TrCallIn_Projectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCallIn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrCallIn_Projectile : TrCallIn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_Projectile")()); }
	private static __gshared TrCallIn_Projectile mDefaultProperties;
	@property final static TrCallIn_Projectile DefaultProperties() { mixin(MGDPC!(TrCallIn_Projectile, "TrCallIn_Projectile TribesGame.Default__TrCallIn_Projectile")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireCompletedCallIn;
			ScriptFunction mFireProjectile;
		}
		public @property static final
		{
			ScriptFunction FireCompletedCallIn() { mixin(MGF!("mFireCompletedCallIn", "Function TribesGame.TrCallIn_Projectile.FireCompletedCallIn")()); }
			ScriptFunction FireProjectile() { mixin(MGF!("mFireProjectile", "Function TribesGame.TrCallIn_Projectile.FireProjectile")()); }
		}
	}
	@property final auto ref
	{
		Vector m_SavedTargetNormal() { mixin(MGPC!(Vector, 588)()); }
		Vector m_SavedTargetLocation() { mixin(MGPC!(Vector, 576)()); }
		int m_FiredProjectiles() { mixin(MGPC!(int, 572)()); }
		ParticleSystem TargetParticleSystem() { mixin(MGPC!(ParticleSystem, 568)()); }
		SoundCue TargetParticleSound() { mixin(MGPC!(SoundCue, 564)()); }
		SoundCue AreaWarningSound() { mixin(MGPC!(SoundCue, 560)()); }
		int NumberOfProjectiles() { mixin(MGPC!(int, 556)()); }
		float FireTimeLength() { mixin(MGPC!(float, 552)()); }
		float CallRadius() { mixin(MGPC!(float, 548)()); }
		ScriptClass ProjectileFireClass() { mixin(MGPC!(ScriptClass, 544)()); }
	}
final:
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.FireCompletedCallIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void FireProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireProjectile, cast(void*)0, cast(void*)0);
	}
}

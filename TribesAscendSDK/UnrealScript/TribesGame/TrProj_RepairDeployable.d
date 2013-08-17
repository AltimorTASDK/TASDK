module UnrealScript.TribesGame.TrProj_RepairDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RepairDeployable : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_RepairDeployable")()); }
	private static __gshared TrProj_RepairDeployable mDefaultProperties;
	@property final static TrProj_RepairDeployable DefaultProperties() { mixin(MGDPC!(TrProj_RepairDeployable, "TrProj_RepairDeployable TribesGame.Default__TrProj_RepairDeployable")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitProjectile;
			ScriptFunction mArmedTimer;
			ScriptFunction mHitWall;
			ScriptFunction mCheckRepair;
			ScriptFunction mExplode;
			ScriptFunction mDetonateObsolete;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_RepairDeployable.PostBeginPlay")()); }
			ScriptFunction InitProjectile() { mixin(MGF!("mInitProjectile", "Function TribesGame.TrProj_RepairDeployable.InitProjectile")()); }
			ScriptFunction ArmedTimer() { mixin(MGF!("mArmedTimer", "Function TribesGame.TrProj_RepairDeployable.ArmedTimer")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function TribesGame.TrProj_RepairDeployable.HitWall")()); }
			ScriptFunction CheckRepair() { mixin(MGF!("mCheckRepair", "Function TribesGame.TrProj_RepairDeployable.CheckRepair")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function TribesGame.TrProj_RepairDeployable.Explode")()); }
			ScriptFunction DetonateObsolete() { mixin(MGF!("mDetonateObsolete", "Function TribesGame.TrProj_RepairDeployable.DetonateObsolete")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Actor) ActorsToRepair() { mixin(MGPC!("ScriptArray!(Actor)", 920)()); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) RepairBeams() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 932)()); }
		float m_fTickFrequency() { mixin(MGPC!("float", 956)()); }
		float m_fTimeSinceLastTick() { mixin(MGPC!("float", 952)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RepairBeamAC'!
		SoundCue RepairBeamSound() { mixin(MGPC!("SoundCue", 944)()); }
		float m_fVehicleRepairPercentage() { mixin(MGPC!("float", 916)()); }
		float m_fRepairPercentage() { mixin(MGPC!("float", 912)()); }
		float m_fRepairBuff() { mixin(MGPC!("float", 908)()); }
		float m_fRepairRadius() { mixin(MGPC!("float", 904)()); }
		float m_fCheckNearbyActorsFrequency() { mixin(MGPC!("float", 900)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass* ClassToInherit = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		if (ClassToInherit !is null)
			*cast(ScriptClass*)&params[12] = *ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ArmedTimer, cast(void*)0, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void CheckRepair()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRepair, cast(void*)0, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void DetonateObsolete(bool* bDetonateFromDamage = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDetonateFromDamage !is null)
			*cast(bool*)params.ptr = *bDetonateFromDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetonateObsolete, params.ptr, cast(void*)0);
	}
}

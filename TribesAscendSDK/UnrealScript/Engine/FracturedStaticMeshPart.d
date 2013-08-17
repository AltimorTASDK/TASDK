module UnrealScript.Engine.FracturedStaticMeshPart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FracturedStaticMeshActor;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface FracturedStaticMeshPart : FracturedStaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FracturedStaticMeshPart")()); }
	private static __gshared FracturedStaticMeshPart mDefaultProperties;
	@property final static FracturedStaticMeshPart DefaultProperties() { mixin(MGDPC!(FracturedStaticMeshPart, "FracturedStaticMeshPart Engine.Default__FracturedStaticMeshPart")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mRecyclePart;
			ScriptFunction mTakeDamage;
			ScriptFunction mTryToCleanUp;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mExplode;
			ScriptFunction mBreakOffPartsInRadius;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function Engine.FracturedStaticMeshPart.Initialize")()); }
			ScriptFunction RecyclePart() { mixin(MGF!("mRecyclePart", "Function Engine.FracturedStaticMeshPart.RecyclePart")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function Engine.FracturedStaticMeshPart.TakeDamage")()); }
			ScriptFunction TryToCleanUp() { mixin(MGF!("mTryToCleanUp", "Function Engine.FracturedStaticMeshPart.TryToCleanUp")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function Engine.FracturedStaticMeshPart.FellOutOfWorld")()); }
			ScriptFunction Explode() { mixin(MGF!("mExplode", "Function Engine.FracturedStaticMeshPart.Explode")()); }
			ScriptFunction BreakOffPartsInRadius() { mixin(MGF!("mBreakOffPartsInRadius", "Function Engine.FracturedStaticMeshPart.BreakOffPartsInRadius")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float LastImpactSoundTime() { mixin(MGPC!(float, 624)()); }
			float CurrentVibrationLevel() { mixin(MGPC!(float, 620)()); }
			Vector OldVelocity() { mixin(MGPC!(Vector, 608)()); }
			PrimitiveComponent.ERBCollisionChannel AsleepRBChannel() { mixin(MGPC!(PrimitiveComponent.ERBCollisionChannel, 604)()); }
			float FracPartGravScale() { mixin(MGPC!(float, 600)()); }
			int PartPoolIndex() { mixin(MGPC!(int, 596)()); }
			float LastSpawnTime() { mixin(MGPC!(float, 592)()); }
			FracturedStaticMeshActor BaseFracturedMeshActor() { mixin(MGPC!(FracturedStaticMeshActor, 584)()); }
			float DestroyPartRadiusFactor() { mixin(MGPC!(float, 580)()); }
		}
		bool bCompositeThatExplodesOnImpact() { mixin(MGBPC!(588, 0x4)()); }
		bool bCompositeThatExplodesOnImpact(bool val) { mixin(MSBPC!(588, 0x4)()); }
		bool bChangeRBChannelWhenAsleep() { mixin(MGBPC!(588, 0x2)()); }
		bool bChangeRBChannelWhenAsleep(bool val) { mixin(MSBPC!(588, 0x2)()); }
		bool bHasBeenRecycled() { mixin(MGBPC!(588, 0x1)()); }
		bool bHasBeenRecycled(bool val) { mixin(MSBPC!(588, 0x1)()); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void RecyclePart(bool bAddToFreePool)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAddToFreePool;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecyclePart, params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void TryToCleanUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TryToCleanUp, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void Explode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, cast(void*)0, cast(void*)0);
	}
	void BreakOffPartsInRadius(Vector Origin, float Radius, float RBStrength, bool bWantPhysChunksAndParticles)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(bool*)&params[20] = bWantPhysChunksAndParticles;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakOffPartsInRadius, params.ptr, cast(void*)0);
	}
}

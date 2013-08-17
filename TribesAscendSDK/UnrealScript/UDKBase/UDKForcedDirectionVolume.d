module UnrealScript.UDKBase.UDKForcedDirectionVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface UDKForcedDirectionVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKForcedDirectionVolume")()); }
	private static __gshared UDKForcedDirectionVolume mDefaultProperties;
	@property final static UDKForcedDirectionVolume DefaultProperties() { mixin(MGDPC!(UDKForcedDirectionVolume, "UDKForcedDirectionVolume UDKBase.Default__UDKForcedDirectionVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mActorEnteredVolume;
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mStopsProjectile;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UDKBase.UDKForcedDirectionVolume.PostBeginPlay")()); }
			ScriptFunction ActorEnteredVolume() { mixin(MGF!("mActorEnteredVolume", "Function UDKBase.UDKForcedDirectionVolume.ActorEnteredVolume")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function UDKBase.UDKForcedDirectionVolume.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function UDKBase.UDKForcedDirectionVolume.UnTouch")()); }
			ScriptFunction StopsProjectile() { mixin(MGF!("mStopsProjectile", "Function UDKBase.UDKForcedDirectionVolume.StopsProjectile")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKVehicle) TouchingVehicles() { mixin(MGPC!(ScriptArray!(UDKVehicle), 608)()); }
			Vector ArrowDirection() { mixin(MGPC!(Vector, 596)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Arrow'!
			ScriptClass TypeToForce() { mixin(MGPC!(ScriptClass, 584)()); }
		}
		bool bBlockSpectators() { mixin(MGBPC!(588, 0x8)()); }
		bool bBlockSpectators(bool val) { mixin(MSBPC!(588, 0x8)()); }
		bool bBlockPawns() { mixin(MGBPC!(588, 0x4)()); }
		bool bBlockPawns(bool val) { mixin(MSBPC!(588, 0x4)()); }
		bool bDenyExit() { mixin(MGBPC!(588, 0x2)()); }
		bool bDenyExit(bool val) { mixin(MSBPC!(588, 0x2)()); }
		bool bIgnoreHoverboards() { mixin(MGBPC!(588, 0x1)()); }
		bool bIgnoreHoverboards(bool val) { mixin(MSBPC!(588, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ActorEnteredVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorEnteredVolume, params.ptr, cast(void*)0);
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}

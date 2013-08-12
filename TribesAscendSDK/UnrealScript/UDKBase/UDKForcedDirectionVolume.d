module UnrealScript.UDKBase.UDKForcedDirectionVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Projectile;

extern(C++) interface UDKForcedDirectionVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKForcedDirectionVolume")); }
	private static __gshared UDKForcedDirectionVolume mDefaultProperties;
	@property final static UDKForcedDirectionVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKForcedDirectionVolume)("UDKForcedDirectionVolume UDKBase.Default__UDKForcedDirectionVolume")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKForcedDirectionVolume.PostBeginPlay")); }
			ScriptFunction ActorEnteredVolume() { return mActorEnteredVolume ? mActorEnteredVolume : (mActorEnteredVolume = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKForcedDirectionVolume.ActorEnteredVolume")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKForcedDirectionVolume.Touch")); }
			ScriptFunction UnTouch() { return mUnTouch ? mUnTouch : (mUnTouch = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKForcedDirectionVolume.UnTouch")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKForcedDirectionVolume.StopsProjectile")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKVehicle) TouchingVehicles() { return *cast(ScriptArray!(UDKVehicle)*)(cast(size_t)cast(void*)this + 608); }
			Vector ArrowDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
			ScriptClass TypeToForce() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 584); }
		}
		bool bBlockSpectators() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x8) != 0; }
		bool bBlockSpectators(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x8; } return val; }
		bool bBlockPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x4) != 0; }
		bool bBlockPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x4; } return val; }
		bool bDenyExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x2) != 0; }
		bool bDenyExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x2; } return val; }
		bool bIgnoreHoverboards() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x1) != 0; }
		bool bIgnoreHoverboards(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x1; } return val; }
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

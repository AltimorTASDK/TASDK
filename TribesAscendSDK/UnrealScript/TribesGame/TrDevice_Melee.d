module UnrealScript.TribesGame.TrDevice_Melee;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface TrDevice_Melee : TrDevice_AutoFire
{
public extern(D):
	struct MeleeRandomAnimation
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			CameraAnim FireCameraAnim() { return *cast(CameraAnim*)(cast(size_t)&this + 8); }
			ScriptName FireAnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ImpactInfo) PendingImpactList() { return *cast(ScriptArray!(Actor.ImpactInfo)*)(cast(size_t)cast(void*)this + 2164); }
		ScriptArray!(TrDevice_Melee.MeleeRandomAnimation) FiringAnimRandomList() { return *cast(ScriptArray!(TrDevice_Melee.MeleeRandomAnimation)*)(cast(size_t)cast(void*)this + 2176); }
		AnimNodeSequence FiringAnimSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 2188); }
	}
final:
	void OwningClientPlayHit(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83116], params.ptr, cast(void*)0);
	}
	void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83119], params.ptr, cast(void*)0);
	}
	int CalcAmountToLoad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83123], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83125], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	float GetBuildUpTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83129], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83131], cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83151], params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	void AttemptFlagFumble(TrPawn Victim)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[83161], params.ptr, cast(void*)0);
	}
}

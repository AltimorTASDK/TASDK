module UnrealScript.TribesGame.TrCollisionProxy;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouchOther;
			ScriptFunction mForceProximityScan;
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mShouldIgnoreActor;
			ScriptFunction mForceClearNearByPawnsList;
			ScriptFunction mDestroyed;
			ScriptFunction mCheckNearByPawns;
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
			ScriptFunction mGetNearByPawns;
			ScriptFunction mFellOutOfWorld;
		}
		public @property static final
		{
			ScriptFunction TouchOther() { return mTouchOther ? mTouchOther : (mTouchOther = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.TouchOther")); }
			ScriptFunction ForceProximityScan() { return mForceProximityScan ? mForceProximityScan : (mForceProximityScan = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.ForceProximityScan")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.Touch")); }
			ScriptFunction UnTouch() { return mUnTouch ? mUnTouch : (mUnTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.UnTouch")); }
			ScriptFunction ShouldIgnoreActor() { return mShouldIgnoreActor ? mShouldIgnoreActor : (mShouldIgnoreActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.ShouldIgnoreActor")); }
			ScriptFunction ForceClearNearByPawnsList() { return mForceClearNearByPawnsList ? mForceClearNearByPawnsList : (mForceClearNearByPawnsList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.ForceClearNearByPawnsList")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.Destroyed")); }
			ScriptFunction CheckNearByPawns() { return mCheckNearByPawns ? mCheckNearByPawns : (mCheckNearByPawns = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.CheckNearByPawns")); }
			ScriptFunction OnPawnAdded() { return mOnPawnAdded ? mOnPawnAdded : (mOnPawnAdded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.OnPawnAdded")); }
			ScriptFunction OnPawnRemoved() { return mOnPawnRemoved ? mOnPawnRemoved : (mOnPawnRemoved = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.OnPawnRemoved")); }
			ScriptFunction GetNearByPawns() { return mGetNearByPawns ? mGetNearByPawns : (mGetNearByPawns = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.GetNearByPawns")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy.FellOutOfWorld")); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(Pawn) m_NearByPawns() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 476); }
		bool m_bTrackLocallyControlledPawnsOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20) != 0; }
		bool m_bTrackLocallyControlledPawnsOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20; } return val; }
		bool m_bForwardOwnerOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10) != 0; }
		bool m_bForwardOwnerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10; } return val; }
		bool m_bIgnoreInvulnerablePlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8) != 0; }
		bool m_bIgnoreInvulnerablePlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8; } return val; }
		bool m_bIgnoreHackedPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
		bool m_bIgnoreHackedPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
		bool m_bIgnoreNonPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
		bool m_bIgnoreNonPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
		bool m_bIgnoreStealthPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool m_bIgnoreStealthPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
final:
	void TouchOther(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.TouchOther, params.ptr, cast(void*)0);
	}
	void ForceProximityScan(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceProximityScan, params.ptr, cast(void*)0);
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
	bool ShouldIgnoreActor(Actor pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldIgnoreActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ForceClearNearByPawnsList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceClearNearByPawnsList, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void CheckNearByPawns(Pawn aPawn, bool bAdd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckNearByPawns, params.ptr, cast(void*)0);
	}
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnRemoved, params.ptr, cast(void*)0);
	}
	int GetNearByPawns(bool bOnlyValid)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyValid;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNearByPawns, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
}

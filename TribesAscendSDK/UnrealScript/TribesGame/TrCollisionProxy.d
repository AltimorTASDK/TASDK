module UnrealScript.TribesGame.TrCollisionProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCollisionProxy")()); }
	private static __gshared TrCollisionProxy mDefaultProperties;
	@property final static TrCollisionProxy DefaultProperties() { mixin(MGDPC!(TrCollisionProxy, "TrCollisionProxy TribesGame.Default__TrCollisionProxy")()); }
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
			ScriptFunction TouchOther() { mixin(MGF!("mTouchOther", "Function TribesGame.TrCollisionProxy.TouchOther")()); }
			ScriptFunction ForceProximityScan() { mixin(MGF!("mForceProximityScan", "Function TribesGame.TrCollisionProxy.ForceProximityScan")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrCollisionProxy.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function TribesGame.TrCollisionProxy.UnTouch")()); }
			ScriptFunction ShouldIgnoreActor() { mixin(MGF!("mShouldIgnoreActor", "Function TribesGame.TrCollisionProxy.ShouldIgnoreActor")()); }
			ScriptFunction ForceClearNearByPawnsList() { mixin(MGF!("mForceClearNearByPawnsList", "Function TribesGame.TrCollisionProxy.ForceClearNearByPawnsList")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrCollisionProxy.Destroyed")()); }
			ScriptFunction CheckNearByPawns() { mixin(MGF!("mCheckNearByPawns", "Function TribesGame.TrCollisionProxy.CheckNearByPawns")()); }
			ScriptFunction OnPawnAdded() { mixin(MGF!("mOnPawnAdded", "Function TribesGame.TrCollisionProxy.OnPawnAdded")()); }
			ScriptFunction OnPawnRemoved() { mixin(MGF!("mOnPawnRemoved", "Function TribesGame.TrCollisionProxy.OnPawnRemoved")()); }
			ScriptFunction GetNearByPawns() { mixin(MGF!("mGetNearByPawns", "Function TribesGame.TrCollisionProxy.GetNearByPawns")()); }
			ScriptFunction FellOutOfWorld() { mixin(MGF!("mFellOutOfWorld", "Function TribesGame.TrCollisionProxy.FellOutOfWorld")()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(Pawn) m_NearByPawns() { mixin(MGPC!(ScriptArray!(Pawn), 476)()); }
		bool m_bTrackLocallyControlledPawnsOnly() { mixin(MGBPC!(488, 0x20)()); }
		bool m_bTrackLocallyControlledPawnsOnly(bool val) { mixin(MSBPC!(488, 0x20)()); }
		bool m_bForwardOwnerOnly() { mixin(MGBPC!(488, 0x10)()); }
		bool m_bForwardOwnerOnly(bool val) { mixin(MSBPC!(488, 0x10)()); }
		bool m_bIgnoreInvulnerablePlayers() { mixin(MGBPC!(488, 0x8)()); }
		bool m_bIgnoreInvulnerablePlayers(bool val) { mixin(MSBPC!(488, 0x8)()); }
		bool m_bIgnoreHackedPawns() { mixin(MGBPC!(488, 0x4)()); }
		bool m_bIgnoreHackedPawns(bool val) { mixin(MSBPC!(488, 0x4)()); }
		bool m_bIgnoreNonPlayers() { mixin(MGBPC!(488, 0x2)()); }
		bool m_bIgnoreNonPlayers(bool val) { mixin(MSBPC!(488, 0x2)()); }
		bool m_bIgnoreStealthPlayers() { mixin(MGBPC!(488, 0x1)()); }
		bool m_bIgnoreStealthPlayers(bool val) { mixin(MSBPC!(488, 0x1)()); }
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

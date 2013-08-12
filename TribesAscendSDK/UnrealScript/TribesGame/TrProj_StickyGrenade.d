module UnrealScript.TribesGame.TrProj_StickyGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_StickyGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_StickyGrenade")); }
	private static __gshared TrProj_StickyGrenade mDefaultProperties;
	@property final static TrProj_StickyGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_StickyGrenade)("TrProj_StickyGrenade TribesGame.Default__TrProj_StickyGrenade")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mHitWall;
			ScriptFunction mProcessTouch;
			ScriptFunction mStickToTarget;
			ScriptFunction mOnBaseChanged;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_StickyGrenade.PostBeginPlay")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_StickyGrenade.HitWall")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_StickyGrenade.ProcessTouch")); }
			ScriptFunction StickToTarget() { return mStickToTarget ? mStickToTarget : (mStickToTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_StickyGrenade.StickToTarget")); }
			ScriptFunction OnBaseChanged() { return mOnBaseChanged ? mOnBaseChanged : (mOnBaseChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_StickyGrenade.OnBaseChanged")); }
		}
	}
	@property final
	{
		@property final auto ref Actor m_OldBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 888); }
		bool m_bHasStuckToTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 884) & 0x1) != 0; }
		bool m_bHasStuckToTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 884) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 884) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.StickToTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void OnBaseChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBaseChanged, cast(void*)0, cast(void*)0);
	}
}

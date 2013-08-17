module UnrealScript.TribesGame.TrProj_StickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_StickyGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_StickyGrenade")()); }
	private static __gshared TrProj_StickyGrenade mDefaultProperties;
	@property final static TrProj_StickyGrenade DefaultProperties() { mixin(MGDPC!(TrProj_StickyGrenade, "TrProj_StickyGrenade TribesGame.Default__TrProj_StickyGrenade")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_StickyGrenade.PostBeginPlay")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function TribesGame.TrProj_StickyGrenade.HitWall")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function TribesGame.TrProj_StickyGrenade.ProcessTouch")()); }
			ScriptFunction StickToTarget() { mixin(MGF!("mStickToTarget", "Function TribesGame.TrProj_StickyGrenade.StickToTarget")()); }
			ScriptFunction OnBaseChanged() { mixin(MGF!("mOnBaseChanged", "Function TribesGame.TrProj_StickyGrenade.OnBaseChanged")()); }
		}
	}
	@property final
	{
		@property final auto ref Actor m_OldBase() { mixin(MGPC!("Actor", 888)()); }
		bool m_bHasStuckToTarget() { mixin(MGBPC!(884, 0x1)()); }
		bool m_bHasStuckToTarget(bool val) { mixin(MSBPC!(884, 0x1)()); }
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

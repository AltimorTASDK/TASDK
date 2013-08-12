module UnrealScript.TribesGame.TrProj_NovaColt;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NovaColt : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NovaColt")); }
	private static __gshared TrProj_NovaColt mDefaultProperties;
	@property final static TrProj_NovaColt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_NovaColt)("TrProj_NovaColt TribesGame.Default__TrProj_NovaColt")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mHitWall;
		public @property static final ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_NovaColt.HitWall")); }
	}
	@property final auto ref
	{
		int m_nNumberBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 820); }
		int m_nBouncesAllowed() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
	}
	final void HitWall(Vector HitNormal, Actor Wall, 
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
}

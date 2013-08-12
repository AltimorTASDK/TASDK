module UnrealScript.TribesGame.TrAnimNodeBlendByRidingPassenger;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByRidingPassenger : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByRidingPassenger")); }
	private static __gshared TrAnimNodeBlendByRidingPassenger mDefaultProperties;
	@property final static TrAnimNodeBlendByRidingPassenger DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeBlendByRidingPassenger)("TrAnimNodeBlendByRidingPassenger TribesGame.Default__TrAnimNodeBlendByRidingPassenger")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayIdle;
			ScriptFunction mPlayFire;
			ScriptFunction mPlayReload;
			ScriptFunction mPlayOffhand;
		}
		public @property static final
		{
			ScriptFunction PlayIdle() { return mPlayIdle ? mPlayIdle : (mPlayIdle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayIdle")); }
			ScriptFunction PlayFire() { return mPlayFire ? mPlayFire : (mPlayFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayFire")); }
			ScriptFunction PlayReload() { return mPlayReload ? mPlayReload : (mPlayReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayReload")); }
			ScriptFunction PlayOffhand() { return mPlayOffhand ? mPlayOffhand : (mPlayOffhand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayOffhand")); }
		}
	}
	@property final auto ref
	{
		AnimNodeSequence m_FireAnimSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 304); }
		ScriptName m_nmFireAnimSeqNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 296); }
		TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
	}
final:
	void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdle, cast(void*)0, cast(void*)0);
	}
	void PlayFire(float RefireTime, ScriptName FireAnimName, float ReloadTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = RefireTime;
		*cast(ScriptName*)&params[4] = FireAnimName;
		*cast(float*)&params[12] = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFire, params.ptr, cast(void*)0);
	}
	void PlayReload(float ReloadTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayReload, params.ptr, cast(void*)0);
	}
	void PlayOffhand()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOffhand, cast(void*)0, cast(void*)0);
	}
}

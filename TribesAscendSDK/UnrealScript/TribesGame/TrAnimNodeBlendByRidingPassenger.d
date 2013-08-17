module UnrealScript.TribesGame.TrAnimNodeBlendByRidingPassenger;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByRidingPassenger : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByRidingPassenger")); }
	private static __gshared TrAnimNodeBlendByRidingPassenger mDefaultProperties;
	@property final static TrAnimNodeBlendByRidingPassenger DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByRidingPassenger", "TrAnimNodeBlendByRidingPassenger TribesGame.Default__TrAnimNodeBlendByRidingPassenger")); }
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
			ScriptFunction PlayIdle() { mixin(MGF("mPlayIdle", "Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayIdle")); }
			ScriptFunction PlayFire() { mixin(MGF("mPlayFire", "Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayFire")); }
			ScriptFunction PlayReload() { mixin(MGF("mPlayReload", "Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayReload")); }
			ScriptFunction PlayOffhand() { mixin(MGF("mPlayOffhand", "Function TribesGame.TrAnimNodeBlendByRidingPassenger.PlayOffhand")); }
		}
	}
	@property final auto ref
	{
		AnimNodeSequence m_FireAnimSeqNode() { mixin(MGPC("AnimNodeSequence", 304)); }
		ScriptName m_nmFireAnimSeqNodeName() { mixin(MGPC("ScriptName", 296)); }
		TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 292)); }
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

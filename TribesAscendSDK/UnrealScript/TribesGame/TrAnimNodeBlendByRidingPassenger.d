module UnrealScript.TribesGame.TrAnimNodeBlendByRidingPassenger;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByRidingPassenger : TrAnimNodeBlendList
{
public extern(D):
	@property final auto ref
	{
		AnimNodeSequence m_FireAnimSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 304); }
		ScriptName m_nmFireAnimSeqNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 296); }
		TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
	}
final:
	void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66456], cast(void*)0, cast(void*)0);
	}
	void PlayFire(float RefireTime, ScriptName FireAnimName, float ReloadTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = RefireTime;
		*cast(ScriptName*)&params[4] = FireAnimName;
		*cast(float*)&params[12] = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66457], params.ptr, cast(void*)0);
	}
	void PlayReload(float ReloadTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66461], params.ptr, cast(void*)0);
	}
	void PlayOffhand()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66463], cast(void*)0, cast(void*)0);
	}
}

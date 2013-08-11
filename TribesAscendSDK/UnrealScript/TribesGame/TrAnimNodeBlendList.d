module UnrealScript.TribesGame.TrAnimNodeBlendList;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendList : AnimNodeBlendList
{
	public @property final auto ref ScriptArray!(float) m_ChildBlendInTime() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float m_fBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	final float GetBlendTime(int ChildIndex, bool bGetDefault)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(bool*)&params[4] = bGetDefault;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66320], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}

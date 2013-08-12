module UnrealScript.TribesGame.TrAnimNodeBlendList;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendList : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendList")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetBlendTime;
		public @property static final ScriptFunction GetBlendTime() { return mGetBlendTime ? mGetBlendTime : (mGetBlendTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAnimNodeBlendList.GetBlendTime")); }
	}
	@property final auto ref
	{
		ScriptArray!(float) m_ChildBlendInTime() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 276); }
		float m_fBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	}
	final float GetBlendTime(int ChildIndex, bool bGetDefault)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(bool*)&params[4] = bGetDefault;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBlendTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}

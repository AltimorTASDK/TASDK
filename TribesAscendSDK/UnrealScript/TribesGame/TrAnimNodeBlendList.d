module UnrealScript.TribesGame.TrAnimNodeBlendList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendList : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendList")()); }
	private static __gshared TrAnimNodeBlendList mDefaultProperties;
	@property final static TrAnimNodeBlendList DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendList, "TrAnimNodeBlendList TribesGame.Default__TrAnimNodeBlendList")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetBlendTime;
		public @property static final ScriptFunction GetBlendTime() { mixin(MGF!("mGetBlendTime", "Function TribesGame.TrAnimNodeBlendList.GetBlendTime")()); }
	}
	@property final auto ref
	{
		ScriptArray!(float) m_ChildBlendInTime() { mixin(MGPC!(ScriptArray!(float), 276)()); }
		float m_fBlendTime() { mixin(MGPC!(float, 288)()); }
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

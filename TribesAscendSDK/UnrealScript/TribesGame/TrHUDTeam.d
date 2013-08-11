module UnrealScript.TribesGame.TrHUDTeam;

import ScriptClasses;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrHUDTeam : TrHUD
{
public extern(D):
	@property final auto ref int m_nLastMessageCode() { return *cast(int*)(cast(size_t)cast(void*)this + 2492); }
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96623], cast(void*)0, cast(void*)0);
	}
}

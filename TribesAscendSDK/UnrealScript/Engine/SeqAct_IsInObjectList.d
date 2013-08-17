module UnrealScript.Engine.SeqAct_IsInObjectList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_IsInObjectList : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_IsInObjectList")); }
	private static __gshared SeqAct_IsInObjectList mDefaultProperties;
	@property final static SeqAct_IsInObjectList DefaultProperties() { mixin(MGDPC("SeqAct_IsInObjectList", "SeqAct_IsInObjectList Engine.Default__SeqAct_IsInObjectList")); }
	@property final
	{
		bool bObjectFound() { mixin(MGBPC(232, 0x2)); }
		bool bObjectFound(bool val) { mixin(MSBPC(232, 0x2)); }
		bool bCheckForAllObjects() { mixin(MGBPC(232, 0x1)); }
		bool bCheckForAllObjects(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}

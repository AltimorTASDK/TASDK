module UnrealScript.Engine.SeqAct_ModifyObjectList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_ModifyObjectList : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ModifyObjectList")()); }
	private static __gshared SeqAct_ModifyObjectList mDefaultProperties;
	@property final static SeqAct_ModifyObjectList DefaultProperties() { mixin(MGDPC!(SeqAct_ModifyObjectList, "SeqAct_ModifyObjectList Engine.Default__SeqAct_ModifyObjectList")()); }
	@property final auto ref int ListEntriesCount() { mixin(MGPC!(int, 232)()); }
}

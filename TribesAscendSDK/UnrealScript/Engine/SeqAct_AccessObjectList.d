module UnrealScript.Engine.SeqAct_AccessObjectList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AccessObjectList : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_AccessObjectList")); }
	private static __gshared SeqAct_AccessObjectList mDefaultProperties;
	@property final static SeqAct_AccessObjectList DefaultProperties() { mixin(MGDPC("SeqAct_AccessObjectList", "SeqAct_AccessObjectList Engine.Default__SeqAct_AccessObjectList")); }
	@property final auto ref
	{
		int ObjectIndex() { mixin(MGPC("int", 236)); }
		UObject OutputObject() { mixin(MGPC("UObject", 232)); }
	}
}

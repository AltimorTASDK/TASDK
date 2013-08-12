module UnrealScript.Engine.SeqAct_AccessObjectList;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AccessObjectList : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AccessObjectList")); }
	private static __gshared SeqAct_AccessObjectList mDefaultProperties;
	@property final static SeqAct_AccessObjectList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_AccessObjectList)("SeqAct_AccessObjectList Engine.Default__SeqAct_AccessObjectList")); }
	@property final auto ref
	{
		int ObjectIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		UObject OutputObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 232); }
	}
}

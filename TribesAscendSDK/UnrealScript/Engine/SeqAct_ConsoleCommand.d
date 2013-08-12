module UnrealScript.Engine.SeqAct_ConsoleCommand;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ConsoleCommand : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ConsoleCommand")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mVersionUpdated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction VersionUpdated() { return mVersionUpdated ? mVersionUpdated : (mVersionUpdated = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ConsoleCommand.VersionUpdated")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ConsoleCommand.GetObjClassVersion")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) Commands() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 244); }
		ScriptString Command() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	}
final:
	void VersionUpdated(int OldVersion, int NewVersion)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OldVersion;
		*cast(int*)&params[4] = NewVersion;
		(cast(ScriptObject)this).ProcessEvent(Functions.VersionUpdated, params.ptr, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

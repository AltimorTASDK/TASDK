module UnrealScript.Engine.SeqAct_ConsoleCommand;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ConsoleCommand : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ConsoleCommand")); }
	private static __gshared SeqAct_ConsoleCommand mDefaultProperties;
	@property final static SeqAct_ConsoleCommand DefaultProperties() { mixin(MGDPC("SeqAct_ConsoleCommand", "SeqAct_ConsoleCommand Engine.Default__SeqAct_ConsoleCommand")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mVersionUpdated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction VersionUpdated() { mixin(MGF("mVersionUpdated", "Function Engine.SeqAct_ConsoleCommand.VersionUpdated")); }
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_ConsoleCommand.GetObjClassVersion")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) Commands() { mixin(MGPC("ScriptArray!(ScriptString)", 244)); }
		ScriptString Command() { mixin(MGPC("ScriptString", 232)); }
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

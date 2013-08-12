module UnrealScript.Engine.SeqAct_Log;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Log : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Log")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Log.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			ScriptString LogMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
			Vector TargetOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 240); }
			float TargetDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bIncludeObjComment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bIncludeObjComment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bOutputToScreen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bOutputToScreen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}

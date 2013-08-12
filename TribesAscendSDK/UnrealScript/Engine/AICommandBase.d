module UnrealScript.Engine.AICommandBase;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Core.UObject;

extern(C++) interface AICommandBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AICommandBase")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetUtility;
		public @property static final ScriptFunction GetUtility() { return mGetUtility ? mGetUtility : (mGetUtility = ScriptObject.Find!(ScriptFunction)("Function Engine.AICommandBase.GetUtility")); }
	}
	final static int GetUtility(AIController InAI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		StaticClass.ProcessEvent(Functions.GetUtility, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}

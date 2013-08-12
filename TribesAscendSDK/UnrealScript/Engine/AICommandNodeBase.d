module UnrealScript.Engine.AICommandNodeBase;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.DMC_Prototype;
import UnrealScript.Engine.K2NodeBase;
import UnrealScript.Engine.AITree;

extern(C++) interface AICommandNodeBase : K2NodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AICommandNodeBase")); }
	private static __gshared AICommandNodeBase mDefaultProperties;
	@property final static AICommandNodeBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AICommandNodeBase)("AICommandNodeBase Engine.Default__AICommandNodeBase")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSelectBestChild;
		public @property static final ScriptFunction SelectBestChild() { return mSelectBestChild ? mSelectBestChild : (mSelectBestChild = ScriptObject.Find!(ScriptFunction)("Function Engine.AICommandNodeBase.SelectBestChild")); }
	}
	@property final auto ref
	{
		DMC_Prototype UtilityDMC() { return *cast(DMC_Prototype*)(cast(size_t)cast(void*)this + 96); }
		ScriptClass CommandClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	}
	final AICommandNodeBase SelectBestChild(AIController InAI, AITree.AITreeHandle* Handle)
	{
		ubyte params[56];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		*cast(AITree.AITreeHandle*)&params[4] = *Handle;
		(cast(ScriptObject)this).ProcessEvent(Functions.SelectBestChild, params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[4];
		return *cast(AICommandNodeBase*)&params[52];
	}
}

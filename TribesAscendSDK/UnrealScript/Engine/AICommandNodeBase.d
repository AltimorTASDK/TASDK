module UnrealScript.Engine.AICommandNodeBase;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.DMC_Prototype;
import UnrealScript.Engine.K2NodeBase;
import UnrealScript.Engine.AITree;

extern(C++) interface AICommandNodeBase : K2NodeBase
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9704], params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[4];
		return *cast(AICommandNodeBase*)&params[52];
	}
}

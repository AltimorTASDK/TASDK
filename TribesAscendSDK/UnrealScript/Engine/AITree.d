module UnrealScript.Engine.AITree;

import ScriptClasses;
import UnrealScript.Engine.K2GraphBase;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.AICommandNodeBase;
import UnrealScript.Engine.AICommandNodeRoot;

extern(C++) interface AITree : K2GraphBase
{
	struct AITreeUtilityInfo
	{
		public @property final auto ref float UtilityRating() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __UtilityRating[4];
		public @property final auto ref ScriptClass CommandClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __CommandClass[4];
	}
	struct AITreeHandle
	{
		public @property final auto ref ScriptArray!(AICommandNodeBase) DisabledNodes() { return *cast(ScriptArray!(AICommandNodeBase)*)(cast(size_t)&this + 12); }
		private ubyte __DisabledNodes[12];
		public @property final auto ref ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingList() { return *cast(ScriptArray!(AITree.AITreeUtilityInfo)*)(cast(size_t)&this + 24); }
		private ubyte __LastUtilityRatingList[12];
		public @property final auto ref ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingListAtChange() { return *cast(ScriptArray!(AITree.AITreeUtilityInfo)*)(cast(size_t)&this + 36); }
		private ubyte __LastUtilityRatingListAtChange[12];
		public @property final auto ref AICommandNodeRoot ActiveRoot() { return *cast(AICommandNodeRoot*)(cast(size_t)&this + 8); }
		private ubyte __ActiveRoot[4];
		public @property final auto ref ScriptName ActiveRootName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ActiveRootName[8];
	}
	public @property final auto ref ScriptArray!(AICommandNodeRoot) RootList() { return *cast(ScriptArray!(AICommandNodeRoot)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref K2GraphBase GatherList() { return *cast(K2GraphBase*)(cast(size_t)cast(void*)this + 84); }
	final bool SetActiveRoot(ScriptName InName, AITree.AITreeHandle* Handle)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(AITree.AITreeHandle*)&params[8] = *Handle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9992], params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[8];
		return *cast(bool*)&params[56];
	}
	final ScriptArray!(ScriptClass) EvaluateTree(AIController InAI, AITree.AITreeHandle* Handle)
	{
		ubyte params[64];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		*cast(AITree.AITreeHandle*)&params[4] = *Handle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9996], params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[4];
		return *cast(ScriptArray!(ScriptClass)*)&params[52];
	}
}

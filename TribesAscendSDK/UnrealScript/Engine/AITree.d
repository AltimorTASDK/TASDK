module UnrealScript.Engine.AITree;

import ScriptClasses;
import UnrealScript.Engine.K2GraphBase;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.AICommandNodeBase;
import UnrealScript.Engine.AICommandNodeRoot;

extern(C++) interface AITree : K2GraphBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AITree")); }
	private static __gshared AITree mDefaultProperties;
	@property final static AITree DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AITree)("AITree Engine.Default__AITree")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetActiveRoot;
			ScriptFunction mEvaluateTree;
		}
		public @property static final
		{
			ScriptFunction SetActiveRoot() { return mSetActiveRoot ? mSetActiveRoot : (mSetActiveRoot = ScriptObject.Find!(ScriptFunction)("Function Engine.AITree.SetActiveRoot")); }
			ScriptFunction EvaluateTree() { return mEvaluateTree ? mEvaluateTree : (mEvaluateTree = ScriptObject.Find!(ScriptFunction)("Function Engine.AITree.EvaluateTree")); }
		}
	}
	struct AITreeUtilityInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AITree.AITreeUtilityInfo")); }
		@property final auto ref
		{
			float UtilityRating() { return *cast(float*)(cast(size_t)&this + 4); }
			ScriptClass CommandClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	struct AITreeHandle
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AITree.AITreeHandle")); }
		@property final auto ref
		{
			ScriptArray!(AICommandNodeBase) DisabledNodes() { return *cast(ScriptArray!(AICommandNodeBase)*)(cast(size_t)&this + 12); }
			ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingList() { return *cast(ScriptArray!(AITree.AITreeUtilityInfo)*)(cast(size_t)&this + 24); }
			ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingListAtChange() { return *cast(ScriptArray!(AITree.AITreeUtilityInfo)*)(cast(size_t)&this + 36); }
			AICommandNodeRoot ActiveRoot() { return *cast(AICommandNodeRoot*)(cast(size_t)&this + 8); }
			ScriptName ActiveRootName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(AICommandNodeRoot) RootList() { return *cast(ScriptArray!(AICommandNodeRoot)*)(cast(size_t)cast(void*)this + 72); }
		K2GraphBase GatherList() { return *cast(K2GraphBase*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	bool SetActiveRoot(ScriptName InName, AITree.AITreeHandle* Handle)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(AITree.AITreeHandle*)&params[8] = *Handle;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveRoot, params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[8];
		return *cast(bool*)&params[56];
	}
	ScriptArray!(ScriptClass) EvaluateTree(AIController InAI, AITree.AITreeHandle* Handle)
	{
		ubyte params[64];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		*cast(AITree.AITreeHandle*)&params[4] = *Handle;
		(cast(ScriptObject)this).ProcessEvent(Functions.EvaluateTree, params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[4];
		return *cast(ScriptArray!(ScriptClass)*)&params[52];
	}
}

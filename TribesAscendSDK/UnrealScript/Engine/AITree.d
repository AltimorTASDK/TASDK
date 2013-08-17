module UnrealScript.Engine.AITree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2GraphBase;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.AICommandNodeBase;
import UnrealScript.Engine.AICommandNodeRoot;

extern(C++) interface AITree : K2GraphBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AITree")()); }
	private static __gshared AITree mDefaultProperties;
	@property final static AITree DefaultProperties() { mixin(MGDPC!(AITree, "AITree Engine.Default__AITree")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetActiveRoot;
			ScriptFunction mEvaluateTree;
		}
		public @property static final
		{
			ScriptFunction SetActiveRoot() { mixin(MGF!("mSetActiveRoot", "Function Engine.AITree.SetActiveRoot")()); }
			ScriptFunction EvaluateTree() { mixin(MGF!("mEvaluateTree", "Function Engine.AITree.EvaluateTree")()); }
		}
	}
	struct AITreeUtilityInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AITree.AITreeUtilityInfo")()); }
		@property final auto ref
		{
			float UtilityRating() { mixin(MGPS!(float, 4)()); }
			ScriptClass CommandClass() { mixin(MGPS!(ScriptClass, 0)()); }
		}
	}
	struct AITreeHandle
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AITree.AITreeHandle")()); }
		@property final auto ref
		{
			ScriptArray!(AICommandNodeBase) DisabledNodes() { mixin(MGPS!(ScriptArray!(AICommandNodeBase), 12)()); }
			ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingList() { mixin(MGPS!(ScriptArray!(AITree.AITreeUtilityInfo), 24)()); }
			ScriptArray!(AITree.AITreeUtilityInfo) LastUtilityRatingListAtChange() { mixin(MGPS!(ScriptArray!(AITree.AITreeUtilityInfo), 36)()); }
			AICommandNodeRoot ActiveRoot() { mixin(MGPS!(AICommandNodeRoot, 8)()); }
			ScriptName ActiveRootName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(AICommandNodeRoot) RootList() { mixin(MGPC!(ScriptArray!(AICommandNodeRoot), 72)()); }
		K2GraphBase GatherList() { mixin(MGPC!(K2GraphBase, 84)()); }
	}
final:
	bool SetActiveRoot(ScriptName InName, ref AITree.AITreeHandle Handle)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InName;
		*cast(AITree.AITreeHandle*)&params[8] = Handle;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveRoot, params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[8];
		return *cast(bool*)&params[56];
	}
	ScriptArray!(ScriptClass) EvaluateTree(AIController InAI, ref AITree.AITreeHandle Handle)
	{
		ubyte params[64];
		params[] = 0;
		*cast(AIController*)params.ptr = InAI;
		*cast(AITree.AITreeHandle*)&params[4] = Handle;
		(cast(ScriptObject)this).ProcessEvent(Functions.EvaluateTree, params.ptr, cast(void*)0);
		*Handle = *cast(AITree.AITreeHandle*)&params[4];
		return *cast(ScriptArray!(ScriptClass)*)&params[52];
	}
}

module UnrealScript.Engine.AnimNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNode")()); }
	private static __gshared AnimNode mDefaultProperties;
	@property final static AnimNode DefaultProperties() { mixin(MGDPC!(AnimNode, "AnimNode Engine.Default__AnimNode")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnInit;
			ScriptFunction mOnBecomeRelevant;
			ScriptFunction mOnCeaseRelevant;
			ScriptFunction mFindAnimNode;
			ScriptFunction mPlayAnim;
			ScriptFunction mStopAnim;
			ScriptFunction mReplayAnim;
		}
		public @property static final
		{
			ScriptFunction OnInit() { mixin(MGF!("mOnInit", "Function Engine.AnimNode.OnInit")()); }
			ScriptFunction OnBecomeRelevant() { mixin(MGF!("mOnBecomeRelevant", "Function Engine.AnimNode.OnBecomeRelevant")()); }
			ScriptFunction OnCeaseRelevant() { mixin(MGF!("mOnCeaseRelevant", "Function Engine.AnimNode.OnCeaseRelevant")()); }
			ScriptFunction FindAnimNode() { mixin(MGF!("mFindAnimNode", "Function Engine.AnimNode.FindAnimNode")()); }
			ScriptFunction PlayAnim() { mixin(MGF!("mPlayAnim", "Function Engine.AnimNode.PlayAnim")()); }
			ScriptFunction StopAnim() { mixin(MGF!("mStopAnim", "Function Engine.AnimNode.StopAnim")()); }
			ScriptFunction ReplayAnim() { mixin(MGF!("mReplayAnim", "Function Engine.AnimNode.ReplayAnim")()); }
		}
	}
	enum ESliderType : ubyte
	{
		ST_1D = 0,
		ST_2D = 1,
		ST_MAX = 2,
	}
	struct CurveKey
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNode.CurveKey")()); }
		@property final auto ref
		{
			float Weight() { mixin(MGPS!(float, 8)()); }
			ScriptName CurveName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeBlendBase) ParentNodes() { mixin(MGPC!(ScriptArray!(AnimNodeBlendBase), 120)()); }
			ScriptArray!(UObject.BoneAtom) CachedBoneAtoms() { mixin(MGPC!(ScriptArray!(UObject.BoneAtom), 140)()); }
			ScriptArray!(AnimNode.CurveKey) CachedCurveKeys() { mixin(MGPC!(ScriptArray!(AnimNode.CurveKey), 196)()); }
			ScriptArray!(AnimNode.CurveKey) LastUpdatedAnimMorphKeys() { mixin(MGPC!(ScriptArray!(AnimNode.CurveKey), 212)()); }
			int SearchTag() { mixin(MGPC!(int, 208)()); }
			int bCachedHasRootMotion() { mixin(MGPC!(int, 192)()); }
			UObject.BoneAtom CachedRootMotionDelta() { mixin(MGPC!(UObject.BoneAtom, 160)()); }
			ubyte CachedNumDesiredBones() { mixin(MGPC!(ubyte, 152)()); }
			ScriptName NodeName() { mixin(MGPC!(ScriptName, 132)()); }
			float NodeTotalWeight() { mixin(MGPC!(float, 116)()); }
			int NodeCachedAtomsTag() { mixin(MGPC!(int, 112)()); }
			int TickArrayIndex() { mixin(MGPC!(int, 108)()); }
			int NodeInitTag() { mixin(MGPC!(int, 104)()); }
			int NodeTickTag() { mixin(MGPC!(int, 100)()); }
		}
		bool bCallScriptEventOnCeaseRelevant() { mixin(MGBPC!(96, 0x40)()); }
		bool bCallScriptEventOnCeaseRelevant(bool val) { mixin(MSBPC!(96, 0x40)()); }
		bool bCallScriptEventOnBecomeRelevant() { mixin(MGBPC!(96, 0x20)()); }
		bool bCallScriptEventOnBecomeRelevant(bool val) { mixin(MSBPC!(96, 0x20)()); }
		bool bCallScriptEventOnInit() { mixin(MGBPC!(96, 0x10)()); }
		bool bCallScriptEventOnInit(bool val) { mixin(MSBPC!(96, 0x10)()); }
		bool bDisableCaching() { mixin(MGBPC!(96, 0x8)()); }
		bool bDisableCaching(bool val) { mixin(MSBPC!(96, 0x8)()); }
		bool bTickDuringPausedAnims() { mixin(MGBPC!(96, 0x4)()); }
		bool bTickDuringPausedAnims(bool val) { mixin(MSBPC!(96, 0x4)()); }
		bool bJustBecameRelevant() { mixin(MGBPC!(96, 0x2)()); }
		bool bJustBecameRelevant(bool val) { mixin(MSBPC!(96, 0x2)()); }
		bool bRelevant() { mixin(MGBPC!(96, 0x1)()); }
		bool bRelevant(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
final:
	void OnInit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInit, cast(void*)0, cast(void*)0);
	}
	void OnBecomeRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeRelevant, cast(void*)0, cast(void*)0);
	}
	void OnCeaseRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCeaseRelevant, cast(void*)0, cast(void*)0);
	}
	AnimNode FindAnimNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAnimNode, params.ptr, cast(void*)0);
		return *cast(AnimNode*)&params[8];
	}
	void PlayAnim(bool bLoop, float Rate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = Rate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnim, params.ptr, cast(void*)0);
	}
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAnim, cast(void*)0, cast(void*)0);
	}
	void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplayAnim, cast(void*)0, cast(void*)0);
	}
}

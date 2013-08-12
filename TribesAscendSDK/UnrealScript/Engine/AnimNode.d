module UnrealScript.Engine.AnimNode;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNode")); }
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
			ScriptFunction OnInit() { return mOnInit ? mOnInit : (mOnInit = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.OnInit")); }
			ScriptFunction OnBecomeRelevant() { return mOnBecomeRelevant ? mOnBecomeRelevant : (mOnBecomeRelevant = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.OnBecomeRelevant")); }
			ScriptFunction OnCeaseRelevant() { return mOnCeaseRelevant ? mOnCeaseRelevant : (mOnCeaseRelevant = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.OnCeaseRelevant")); }
			ScriptFunction FindAnimNode() { return mFindAnimNode ? mFindAnimNode : (mFindAnimNode = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.FindAnimNode")); }
			ScriptFunction PlayAnim() { return mPlayAnim ? mPlayAnim : (mPlayAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.PlayAnim")); }
			ScriptFunction StopAnim() { return mStopAnim ? mStopAnim : (mStopAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.StopAnim")); }
			ScriptFunction ReplayAnim() { return mReplayAnim ? mReplayAnim : (mReplayAnim = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNode.ReplayAnim")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNode.CurveKey")); }
		@property final auto ref
		{
			float Weight() { return *cast(float*)(cast(size_t)&this + 8); }
			ScriptName CurveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeBlendBase) ParentNodes() { return *cast(ScriptArray!(AnimNodeBlendBase)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(UObject.BoneAtom) CachedBoneAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 140); }
			ScriptArray!(AnimNode.CurveKey) CachedCurveKeys() { return *cast(ScriptArray!(AnimNode.CurveKey)*)(cast(size_t)cast(void*)this + 196); }
			ScriptArray!(AnimNode.CurveKey) LastUpdatedAnimMorphKeys() { return *cast(ScriptArray!(AnimNode.CurveKey)*)(cast(size_t)cast(void*)this + 212); }
			int SearchTag() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
			int bCachedHasRootMotion() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
			UObject.BoneAtom CachedRootMotionDelta() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 160); }
			ubyte CachedNumDesiredBones() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 152); }
			ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
			float NodeTotalWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			int NodeCachedAtomsTag() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			int TickArrayIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int NodeInitTag() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			int NodeTickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		}
		bool bCallScriptEventOnCeaseRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x40) != 0; }
		bool bCallScriptEventOnCeaseRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x40; } return val; }
		bool bCallScriptEventOnBecomeRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x20) != 0; }
		bool bCallScriptEventOnBecomeRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x20; } return val; }
		bool bCallScriptEventOnInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
		bool bCallScriptEventOnInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
		bool bDisableCaching() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
		bool bDisableCaching(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
		bool bTickDuringPausedAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bTickDuringPausedAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bJustBecameRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bJustBecameRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
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

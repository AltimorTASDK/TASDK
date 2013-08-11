module UnrealScript.Engine.AnimNode;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNode : AnimObject
{
	enum ESliderType : ubyte
	{
		ST_1D = 0,
		ST_2D = 1,
		ST_MAX = 2,
	}
	struct CurveKey
	{
		public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Weight[4];
		public @property final auto ref ScriptName CurveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __CurveName[8];
	}
	public @property final auto ref ScriptArray!(AnimNodeBlendBase) ParentNodes() { return *cast(ScriptArray!(AnimNodeBlendBase)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(UObject.BoneAtom) CachedBoneAtoms() { return *cast(ScriptArray!(UObject.BoneAtom)*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptArray!(AnimNode.CurveKey) CachedCurveKeys() { return *cast(ScriptArray!(AnimNode.CurveKey)*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptArray!(AnimNode.CurveKey) LastUpdatedAnimMorphKeys() { return *cast(ScriptArray!(AnimNode.CurveKey)*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref int SearchTag() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref int bCachedHasRootMotion() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref UObject.BoneAtom CachedRootMotionDelta() { return *cast(UObject.BoneAtom*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ubyte CachedNumDesiredBones() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptName NodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float NodeTotalWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int NodeCachedAtomsTag() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int TickArrayIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int NodeInitTag() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int NodeTickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bCallScriptEventOnCeaseRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x40) != 0; }
	public @property final bool bCallScriptEventOnCeaseRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x40; } return val; }
	public @property final bool bCallScriptEventOnBecomeRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x20) != 0; }
	public @property final bool bCallScriptEventOnBecomeRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x20; } return val; }
	public @property final bool bCallScriptEventOnInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
	public @property final bool bCallScriptEventOnInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
	public @property final bool bDisableCaching() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
	public @property final bool bDisableCaching(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
	public @property final bool bTickDuringPausedAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
	public @property final bool bTickDuringPausedAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
	public @property final bool bJustBecameRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
	public @property final bool bJustBecameRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
	public @property final bool bRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	final void OnInit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10687], cast(void*)0, cast(void*)0);
	}
	final void OnBecomeRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10688], cast(void*)0, cast(void*)0);
	}
	final void OnCeaseRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10689], cast(void*)0, cast(void*)0);
	}
	final AnimNode FindAnimNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10690], params.ptr, cast(void*)0);
		return *cast(AnimNode*)&params[8];
	}
	final void PlayAnim(bool bLoop, float Rate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = Rate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10693], params.ptr, cast(void*)0);
	}
	final void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10697], cast(void*)0, cast(void*)0);
	}
	final void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10698], cast(void*)0, cast(void*)0);
	}
}

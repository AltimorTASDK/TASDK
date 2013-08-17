module UnrealScript.Engine.AnimNodeSynch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeSynch : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeSynch")()); }
	private static __gshared AnimNodeSynch mDefaultProperties;
	@property final static AnimNodeSynch DefaultProperties() { mixin(MGDPC!(AnimNodeSynch, "AnimNodeSynch Engine.Default__AnimNodeSynch")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddNodeToGroup;
			ScriptFunction mRemoveNodeFromGroup;
			ScriptFunction mGetMasterNodeOfGroup;
			ScriptFunction mForceRelativePosition;
			ScriptFunction mGetRelativePosition;
			ScriptFunction mSetGroupRateScale;
		}
		public @property static final
		{
			ScriptFunction AddNodeToGroup() { mixin(MGF!("mAddNodeToGroup", "Function Engine.AnimNodeSynch.AddNodeToGroup")()); }
			ScriptFunction RemoveNodeFromGroup() { mixin(MGF!("mRemoveNodeFromGroup", "Function Engine.AnimNodeSynch.RemoveNodeFromGroup")()); }
			ScriptFunction GetMasterNodeOfGroup() { mixin(MGF!("mGetMasterNodeOfGroup", "Function Engine.AnimNodeSynch.GetMasterNodeOfGroup")()); }
			ScriptFunction ForceRelativePosition() { mixin(MGF!("mForceRelativePosition", "Function Engine.AnimNodeSynch.ForceRelativePosition")()); }
			ScriptFunction GetRelativePosition() { mixin(MGF!("mGetRelativePosition", "Function Engine.AnimNodeSynch.GetRelativePosition")()); }
			ScriptFunction SetGroupRateScale() { mixin(MGF!("mSetGroupRateScale", "Function Engine.AnimNodeSynch.SetGroupRateScale")()); }
		}
	}
	struct SynchGroup
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeSynch.SynchGroup")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(AnimNodeSequence) SeqNodes() { mixin(MGPS!("ScriptArray!(AnimNodeSequence)", 0)()); }
				float RateScale() { mixin(MGPS!("float", 28)()); }
				ScriptName GroupName() { mixin(MGPS!("ScriptName", 16)()); }
				AnimNodeSequence MasterNode() { mixin(MGPS!("AnimNodeSequence", 12)()); }
			}
			bool bFireSlaveNotifies() { mixin(MGBPS!(24, 0x1)()); }
			bool bFireSlaveNotifies(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(AnimNodeSynch.SynchGroup) Groups() { mixin(MGPC!("ScriptArray!(AnimNodeSynch.SynchGroup)", 244)()); }
final:
	void AddNodeToGroup(AnimNodeSequence SeqNode, ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddNodeToGroup, params.ptr, cast(void*)0);
	}
	void RemoveNodeFromGroup(AnimNodeSequence SeqNode, ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(ScriptName*)&params[4] = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveNodeFromGroup, params.ptr, cast(void*)0);
	}
	AnimNodeSequence GetMasterNodeOfGroup(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMasterNodeOfGroup, params.ptr, cast(void*)0);
		return *cast(AnimNodeSequence*)&params[8];
	}
	void ForceRelativePosition(ScriptName GroupName, float RelativePosition)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = RelativePosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceRelativePosition, params.ptr, cast(void*)0);
	}
	float GetRelativePosition(ScriptName GroupName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRelativePosition, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void SetGroupRateScale(ScriptName GroupName, float NewRateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = NewRateScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGroupRateScale, params.ptr, cast(void*)0);
	}
}

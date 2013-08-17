module UnrealScript.Engine.SkelControlBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface SkelControlBase : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SkelControlBase")); }
	private static __gshared SkelControlBase mDefaultProperties;
	@property final static SkelControlBase DefaultProperties() { mixin(MGDPC("SkelControlBase", "SkelControlBase Engine.Default__SkelControlBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSkelControlActive;
			ScriptFunction mSetSkelControlStrength;
			ScriptFunction mTickSkelControl;
		}
		public @property static final
		{
			ScriptFunction SetSkelControlActive() { mixin(MGF("mSetSkelControlActive", "Function Engine.SkelControlBase.SetSkelControlActive")); }
			ScriptFunction SetSkelControlStrength() { mixin(MGF("mSetSkelControlStrength", "Function Engine.SkelControlBase.SetSkelControlStrength")); }
			ScriptFunction TickSkelControl() { mixin(MGF("mTickSkelControl", "Function Engine.SkelControlBase.TickSkelControl")); }
		}
	}
	enum EBoneControlSpace : ubyte
	{
		BCS_WorldSpace = 0,
		BCS_ActorSpace = 1,
		BCS_ComponentSpace = 2,
		BCS_ParentBoneSpace = 3,
		BCS_BoneSpace = 4,
		BCS_OtherBoneSpace = 5,
		BCS_BaseMeshSpace = 6,
		BCS_MAX = 7,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) StrengthAnimNodeNameList() { mixin(MGPC("ScriptArray!(ScriptName)", 132)); }
			ScriptArray!(AnimNode) CachedNodeList() { mixin(MGPC("ScriptArray!(AnimNode)", 144)); }
			int ControlPosY() { mixin(MGPC("int", 184)); }
			int ControlPosX() { mixin(MGPC("int", 180)); }
			SkelControlBase NextControl() { mixin(MGPC("SkelControlBase", 176)); }
			int IgnoreAtOrAboveLOD() { mixin(MGPC("int", 172)); }
			int ControlTickTag() { mixin(MGPC("int", 168)); }
			float BoneScale() { mixin(MGPC("float", 164)); }
			int AnimMetaDataUpdateTag() { mixin(MGPC("int", 160)); }
			float AnimMetadataWeight() { mixin(MGPC("float", 156)); }
			float BlendTimeToGo() { mixin(MGPC("float", 128)); }
			float StrengthTarget() { mixin(MGPC("float", 124)); }
			UObject.AlphaBlendType BlendType() { mixin(MGPC("UObject.AlphaBlendType", 116)); }
			float BlendOutTime() { mixin(MGPC("float", 112)); }
			float BlendInTime() { mixin(MGPC("float", 108)); }
			float ControlStrength() { mixin(MGPC("float", 104)); }
			ScriptName ControlName() { mixin(MGPC("ScriptName", 96)); }
		}
		bool bEnableEaseInOut() { mixin(MGBPC(120, 0x80)); }
		bool bEnableEaseInOut(bool val) { mixin(MSBPC(120, 0x80)); }
		bool bShouldTickInScript() { mixin(MGBPC(120, 0x40)); }
		bool bShouldTickInScript(bool val) { mixin(MSBPC(120, 0x40)); }
		bool bIgnoreWhenNotRendered() { mixin(MGBPC(120, 0x20)); }
		bool bIgnoreWhenNotRendered(bool val) { mixin(MSBPC(120, 0x20)); }
		bool bPropagateSetActive() { mixin(MGBPC(120, 0x10)); }
		bool bPropagateSetActive(bool val) { mixin(MSBPC(120, 0x10)); }
		bool bControlledByAnimMetada() { mixin(MGBPC(120, 0x8)); }
		bool bControlledByAnimMetada(bool val) { mixin(MSBPC(120, 0x8)); }
		bool bInitializedCachedNodeList() { mixin(MGBPC(120, 0x4)); }
		bool bInitializedCachedNodeList(bool val) { mixin(MSBPC(120, 0x4)); }
		bool bSetStrengthFromAnimNode() { mixin(MGBPC(120, 0x2)); }
		bool bSetStrengthFromAnimNode(bool val) { mixin(MSBPC(120, 0x2)); }
		bool bPostPhysicsController() { mixin(MGBPC(120, 0x1)); }
		bool bPostPhysicsController(bool val) { mixin(MSBPC(120, 0x1)); }
	}
final:
	void SetSkelControlActive(bool bInActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkelControlActive, params.ptr, cast(void*)0);
	}
	void SetSkelControlStrength(float NewStrength, float InBlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		*cast(float*)&params[4] = InBlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkelControlStrength, params.ptr, cast(void*)0);
	}
	void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickSkelControl, params.ptr, cast(void*)0);
	}
}

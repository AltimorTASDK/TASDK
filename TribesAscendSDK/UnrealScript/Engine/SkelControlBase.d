module UnrealScript.Engine.SkelControlBase;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface SkelControlBase : AnimObject
{
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
	public @property final auto ref ScriptArray!(ScriptName) StrengthAnimNodeNameList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(AnimNode) CachedNodeList() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int ControlPosY() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int ControlPosX() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref SkelControlBase NextControl() { return *cast(SkelControlBase*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref int IgnoreAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int ControlTickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float BoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int AnimMetaDataUpdateTag() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float AnimMetadataWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float StrengthTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final bool bEnableEaseInOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x80) != 0; }
	public @property final bool bEnableEaseInOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x80; } return val; }
	public @property final bool bShouldTickInScript() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
	public @property final bool bShouldTickInScript(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
	public @property final bool bIgnoreWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
	public @property final bool bIgnoreWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
	public @property final bool bPropagateSetActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
	public @property final bool bPropagateSetActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
	public @property final bool bControlledByAnimMetada() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
	public @property final bool bControlledByAnimMetada(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
	public @property final bool bInitializedCachedNodeList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
	public @property final bool bInitializedCachedNodeList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
	public @property final bool bSetStrengthFromAnimNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool bSetStrengthFromAnimNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool bPostPhysicsController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bPostPhysicsController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref UObject.AlphaBlendType BlendType() { return *cast(UObject.AlphaBlendType*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float ControlStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptName ControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
	final void SetSkelControlActive(bool bInActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26298], params.ptr, cast(void*)0);
	}
	final void SetSkelControlStrength(float NewStrength, float InBlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewStrength;
		*cast(float*)&params[4] = InBlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26300], params.ptr, cast(void*)0);
	}
	final void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26303], params.ptr, cast(void*)0);
	}
}

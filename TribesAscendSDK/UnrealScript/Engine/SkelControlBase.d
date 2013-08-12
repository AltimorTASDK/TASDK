module UnrealScript.Engine.SkelControlBase;

import ScriptClasses;
import UnrealScript.Engine.AnimObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface SkelControlBase : AnimObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlBase")); }
	private static __gshared SkelControlBase mDefaultProperties;
	@property final static SkelControlBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControlBase)("SkelControlBase Engine.Default__SkelControlBase")); }
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
			ScriptFunction SetSkelControlActive() { return mSetSkelControlActive ? mSetSkelControlActive : (mSetSkelControlActive = ScriptObject.Find!(ScriptFunction)("Function Engine.SkelControlBase.SetSkelControlActive")); }
			ScriptFunction SetSkelControlStrength() { return mSetSkelControlStrength ? mSetSkelControlStrength : (mSetSkelControlStrength = ScriptObject.Find!(ScriptFunction)("Function Engine.SkelControlBase.SetSkelControlStrength")); }
			ScriptFunction TickSkelControl() { return mTickSkelControl ? mTickSkelControl : (mTickSkelControl = ScriptObject.Find!(ScriptFunction)("Function Engine.SkelControlBase.TickSkelControl")); }
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
			ScriptArray!(ScriptName) StrengthAnimNodeNameList() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(AnimNode) CachedNodeList() { return *cast(ScriptArray!(AnimNode)*)(cast(size_t)cast(void*)this + 144); }
			int ControlPosY() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
			int ControlPosX() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			SkelControlBase NextControl() { return *cast(SkelControlBase*)(cast(size_t)cast(void*)this + 176); }
			int IgnoreAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			int ControlTickTag() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			float BoneScale() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			int AnimMetaDataUpdateTag() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			float AnimMetadataWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float StrengthTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			UObject.AlphaBlendType BlendType() { return *cast(UObject.AlphaBlendType*)(cast(size_t)cast(void*)this + 116); }
			float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float ControlStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			ScriptName ControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
		}
		bool bEnableEaseInOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x80) != 0; }
		bool bEnableEaseInOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x80; } return val; }
		bool bShouldTickInScript() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x40) != 0; }
		bool bShouldTickInScript(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x40; } return val; }
		bool bIgnoreWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x20) != 0; }
		bool bIgnoreWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x20; } return val; }
		bool bPropagateSetActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x10) != 0; }
		bool bPropagateSetActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x10; } return val; }
		bool bControlledByAnimMetada() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x8) != 0; }
		bool bControlledByAnimMetada(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x8; } return val; }
		bool bInitializedCachedNodeList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x4) != 0; }
		bool bInitializedCachedNodeList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x4; } return val; }
		bool bSetStrengthFromAnimNode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool bSetStrengthFromAnimNode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool bPostPhysicsController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool bPostPhysicsController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
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

module UnrealScript.Engine.SkelControlLookAt;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLookAt : SkelControlBase
{
	public @property final auto ref int ControlBoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float LastCalcTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref Vector BaseBonePos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Vector BaseLookDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref Vector LimitLookDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float LookAtAlphaBlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float LookAtAlphaTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float LookAtAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptName AllowRotationOtherBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float DeadZoneAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float OuterMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float MaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref Vector ActorSpaceLookAtTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref Vector DesiredTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float TargetLocationInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final bool bAllowRotationZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x400) != 0; }
	public @property final bool bAllowRotationZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x400; } return val; }
	public @property final bool bAllowRotationY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x200) != 0; }
	public @property final bool bAllowRotationY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x200; } return val; }
	public @property final bool bAllowRotationX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x100) != 0; }
	public @property final bool bAllowRotationX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x100; } return val; }
	public @property final bool bShowLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x80) != 0; }
	public @property final bool bShowLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x80; } return val; }
	public @property final bool bNotifyBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x40) != 0; }
	public @property final bool bNotifyBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x40; } return val; }
	public @property final bool bDisableBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x20) != 0; }
	public @property final bool bDisableBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x20; } return val; }
	public @property final bool bLimitBasedOnRefPose() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x10) != 0; }
	public @property final bool bLimitBasedOnRefPose(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x10; } return val; }
	public @property final bool bEnableLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x8) != 0; }
	public @property final bool bEnableLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x8; } return val; }
	public @property final bool bInvertUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x4) != 0; }
	public @property final bool bInvertUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x4; } return val; }
	public @property final bool bDefineUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x2) != 0; }
	public @property final bool bDefineUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x2; } return val; }
	public @property final bool bInvertLookAtAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x1) != 0; }
	public @property final bool bInvertLookAtAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x1; } return val; }
	public @property final auto ref ScriptName TargetSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref SkelControlBase.EBoneControlSpace AllowRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 203); }
	public @property final auto ref UObject.EAxis UpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 202); }
	public @property final auto ref UObject.EAxis LookAtAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 201); }
	public @property final auto ref SkelControlBase.EBoneControlSpace TargetLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref Vector TargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
	final void SetTargetLocation(Vector NewTargetLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTargetLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26395], params.ptr, cast(void*)0);
	}
	final void InterpolateTargetLocation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26397], params.ptr, cast(void*)0);
	}
	final void SetLookAtAlpha(float DesiredAlpha, float DesiredBlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DesiredAlpha;
		*cast(float*)&params[4] = DesiredBlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26399], params.ptr, cast(void*)0);
	}
	final bool CanLookAtPoint(Vector PointLoc, bool bDrawDebugInfo, bool bDebugUsePersistentLines, bool bDebugFlushLinesFirst)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = PointLoc;
		*cast(bool*)&params[12] = bDrawDebugInfo;
		*cast(bool*)&params[16] = bDebugUsePersistentLines;
		*cast(bool*)&params[20] = bDebugFlushLinesFirst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26402], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}

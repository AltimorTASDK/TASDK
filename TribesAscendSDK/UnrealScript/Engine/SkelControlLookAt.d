module UnrealScript.Engine.SkelControlLookAt;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLookAt : SkelControlBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			int ControlBoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
			float LastCalcTime() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			Vector BaseBonePos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 300); }
			Vector BaseLookDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
			Vector LimitLookDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
			float LookAtAlphaBlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float LookAtAlphaTarget() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float LookAtAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			ScriptName AllowRotationOtherBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
			float DeadZoneAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float OuterMaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float MaxAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			Vector ActorSpaceLookAtTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
			Vector DesiredTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 220); }
			float TargetLocationInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			ScriptName TargetSpaceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
			SkelControlBase.EBoneControlSpace AllowRotationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 203); }
			UObject.EAxis UpAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 202); }
			UObject.EAxis LookAtAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 201); }
			SkelControlBase.EBoneControlSpace TargetLocationSpace() { return *cast(SkelControlBase.EBoneControlSpace*)(cast(size_t)cast(void*)this + 200); }
			Vector TargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
		}
		bool bAllowRotationZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x400) != 0; }
		bool bAllowRotationZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x400; } return val; }
		bool bAllowRotationY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x200) != 0; }
		bool bAllowRotationY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x200; } return val; }
		bool bAllowRotationX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x100) != 0; }
		bool bAllowRotationX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x100; } return val; }
		bool bShowLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x80) != 0; }
		bool bShowLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x80; } return val; }
		bool bNotifyBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x40) != 0; }
		bool bNotifyBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x40; } return val; }
		bool bDisableBeyondLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x20) != 0; }
		bool bDisableBeyondLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x20; } return val; }
		bool bLimitBasedOnRefPose() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x10) != 0; }
		bool bLimitBasedOnRefPose(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x10; } return val; }
		bool bEnableLimit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x8) != 0; }
		bool bEnableLimit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x8; } return val; }
		bool bInvertUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x4) != 0; }
		bool bInvertUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x4; } return val; }
		bool bDefineUpAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x2) != 0; }
		bool bDefineUpAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x2; } return val; }
		bool bInvertLookAtAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 212) & 0x1) != 0; }
		bool bInvertLookAtAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 212) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 212) &= ~0x1; } return val; }
	}
final:
	void SetTargetLocation(Vector NewTargetLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTargetLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26395], params.ptr, cast(void*)0);
	}
	void InterpolateTargetLocation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26397], params.ptr, cast(void*)0);
	}
	void SetLookAtAlpha(float DesiredAlpha, float DesiredBlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DesiredAlpha;
		*cast(float*)&params[4] = DesiredBlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26399], params.ptr, cast(void*)0);
	}
	bool CanLookAtPoint(Vector PointLoc, bool bDrawDebugInfo, bool bDebugUsePersistentLines, bool bDebugFlushLinesFirst)
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

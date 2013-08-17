module UnrealScript.Engine.SkelControlLookAt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLookAt : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlLookAt")()); }
	private static __gshared SkelControlLookAt mDefaultProperties;
	@property final static SkelControlLookAt DefaultProperties() { mixin(MGDPC!(SkelControlLookAt, "SkelControlLookAt Engine.Default__SkelControlLookAt")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTargetLocation;
			ScriptFunction mInterpolateTargetLocation;
			ScriptFunction mSetLookAtAlpha;
			ScriptFunction mCanLookAtPoint;
		}
		public @property static final
		{
			ScriptFunction SetTargetLocation() { mixin(MGF!("mSetTargetLocation", "Function Engine.SkelControlLookAt.SetTargetLocation")()); }
			ScriptFunction InterpolateTargetLocation() { mixin(MGF!("mInterpolateTargetLocation", "Function Engine.SkelControlLookAt.InterpolateTargetLocation")()); }
			ScriptFunction SetLookAtAlpha() { mixin(MGF!("mSetLookAtAlpha", "Function Engine.SkelControlLookAt.SetLookAtAlpha")()); }
			ScriptFunction CanLookAtPoint() { mixin(MGF!("mCanLookAtPoint", "Function Engine.SkelControlLookAt.CanLookAtPoint")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ControlBoneIndex() { mixin(MGPC!(int, 316)()); }
			float LastCalcTime() { mixin(MGPC!(float, 312)()); }
			Vector BaseBonePos() { mixin(MGPC!(Vector, 300)()); }
			Vector BaseLookDir() { mixin(MGPC!(Vector, 288)()); }
			Vector LimitLookDir() { mixin(MGPC!(Vector, 276)()); }
			float LookAtAlphaBlendTimeToGo() { mixin(MGPC!(float, 272)()); }
			float LookAtAlphaTarget() { mixin(MGPC!(float, 268)()); }
			float LookAtAlpha() { mixin(MGPC!(float, 264)()); }
			ScriptName AllowRotationOtherBoneName() { mixin(MGPC!(ScriptName, 256)()); }
			float DeadZoneAngle() { mixin(MGPC!(float, 252)()); }
			float OuterMaxAngle() { mixin(MGPC!(float, 248)()); }
			float MaxAngle() { mixin(MGPC!(float, 244)()); }
			Vector ActorSpaceLookAtTarget() { mixin(MGPC!(Vector, 232)()); }
			Vector DesiredTargetLocation() { mixin(MGPC!(Vector, 220)()); }
			float TargetLocationInterpSpeed() { mixin(MGPC!(float, 216)()); }
			ScriptName TargetSpaceBoneName() { mixin(MGPC!(ScriptName, 204)()); }
			SkelControlBase.EBoneControlSpace AllowRotationSpace() { mixin(MGPC!(SkelControlBase.EBoneControlSpace, 203)()); }
			UObject.EAxis UpAxis() { mixin(MGPC!(UObject.EAxis, 202)()); }
			UObject.EAxis LookAtAxis() { mixin(MGPC!(UObject.EAxis, 201)()); }
			SkelControlBase.EBoneControlSpace TargetLocationSpace() { mixin(MGPC!(SkelControlBase.EBoneControlSpace, 200)()); }
			Vector TargetLocation() { mixin(MGPC!(Vector, 188)()); }
		}
		bool bAllowRotationZ() { mixin(MGBPC!(212, 0x400)()); }
		bool bAllowRotationZ(bool val) { mixin(MSBPC!(212, 0x400)()); }
		bool bAllowRotationY() { mixin(MGBPC!(212, 0x200)()); }
		bool bAllowRotationY(bool val) { mixin(MSBPC!(212, 0x200)()); }
		bool bAllowRotationX() { mixin(MGBPC!(212, 0x100)()); }
		bool bAllowRotationX(bool val) { mixin(MSBPC!(212, 0x100)()); }
		bool bShowLimit() { mixin(MGBPC!(212, 0x80)()); }
		bool bShowLimit(bool val) { mixin(MSBPC!(212, 0x80)()); }
		bool bNotifyBeyondLimit() { mixin(MGBPC!(212, 0x40)()); }
		bool bNotifyBeyondLimit(bool val) { mixin(MSBPC!(212, 0x40)()); }
		bool bDisableBeyondLimit() { mixin(MGBPC!(212, 0x20)()); }
		bool bDisableBeyondLimit(bool val) { mixin(MSBPC!(212, 0x20)()); }
		bool bLimitBasedOnRefPose() { mixin(MGBPC!(212, 0x10)()); }
		bool bLimitBasedOnRefPose(bool val) { mixin(MSBPC!(212, 0x10)()); }
		bool bEnableLimit() { mixin(MGBPC!(212, 0x8)()); }
		bool bEnableLimit(bool val) { mixin(MSBPC!(212, 0x8)()); }
		bool bInvertUpAxis() { mixin(MGBPC!(212, 0x4)()); }
		bool bInvertUpAxis(bool val) { mixin(MSBPC!(212, 0x4)()); }
		bool bDefineUpAxis() { mixin(MGBPC!(212, 0x2)()); }
		bool bDefineUpAxis(bool val) { mixin(MSBPC!(212, 0x2)()); }
		bool bInvertLookAtAxis() { mixin(MGBPC!(212, 0x1)()); }
		bool bInvertLookAtAxis(bool val) { mixin(MSBPC!(212, 0x1)()); }
	}
final:
	void SetTargetLocation(Vector NewTargetLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTargetLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTargetLocation, params.ptr, cast(void*)0);
	}
	void InterpolateTargetLocation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.InterpolateTargetLocation, params.ptr, cast(void*)0);
	}
	void SetLookAtAlpha(float DesiredAlpha, float DesiredBlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DesiredAlpha;
		*cast(float*)&params[4] = DesiredBlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLookAtAlpha, params.ptr, cast(void*)0);
	}
	bool CanLookAtPoint(Vector PointLoc, bool bDrawDebugInfo, bool bDebugUsePersistentLines, bool bDebugFlushLinesFirst)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = PointLoc;
		*cast(bool*)&params[12] = bDrawDebugInfo;
		*cast(bool*)&params[16] = bDebugUsePersistentLines;
		*cast(bool*)&params[20] = bDebugFlushLinesFirst;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanLookAtPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}

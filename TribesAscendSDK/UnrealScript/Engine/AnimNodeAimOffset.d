module UnrealScript.Engine.AnimNodeAimOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeAimOffset : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeAimOffset")()); }
	private static __gshared AnimNodeAimOffset mDefaultProperties;
	@property final static AnimNodeAimOffset DefaultProperties() { mixin(MGDPC!(AnimNodeAimOffset, "AnimNodeAimOffset Engine.Default__AnimNodeAimOffset")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetActiveProfileByName;
			ScriptFunction mSetActiveProfileByIndex;
		}
		public @property static final
		{
			ScriptFunction SetActiveProfileByName() { mixin(MGF!("mSetActiveProfileByName", "Function Engine.AnimNodeAimOffset.SetActiveProfileByName")()); }
			ScriptFunction SetActiveProfileByIndex() { mixin(MGF!("mSetActiveProfileByIndex", "Function Engine.AnimNodeAimOffset.SetActiveProfileByIndex")()); }
		}
	}
	enum EAnimAimDir : ubyte
	{
		ANIMAIM_LEFTUP = 0,
		ANIMAIM_CENTERUP = 1,
		ANIMAIM_RIGHTUP = 2,
		ANIMAIM_LEFTCENTER = 3,
		ANIMAIM_CENTERCENTER = 4,
		ANIMAIM_RIGHTCENTER = 5,
		ANIMAIM_LEFTDOWN = 6,
		ANIMAIM_CENTERDOWN = 7,
		ANIMAIM_RIGHTDOWN = 8,
		ANIMAIM_MAX = 9,
	}
	enum EAimID : ubyte
	{
		EAID_LeftUp = 0,
		EAID_LeftDown = 1,
		EAID_RightUp = 2,
		EAID_RightDown = 3,
		EAID_ZeroUp = 4,
		EAID_ZeroDown = 5,
		EAID_ZeroLeft = 6,
		EAID_ZeroRight = 7,
		EAID_CellLU = 8,
		EAID_CellCU = 9,
		EAID_CellRU = 10,
		EAID_CellLC = 11,
		EAID_CellCC = 12,
		EAID_CellRC = 13,
		EAID_CellLD = 14,
		EAID_CellCD = 15,
		EAID_CellRD = 16,
		EAID_MAX = 17,
	}
	struct AimTransform
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeAimOffset.AimTransform")()); }
		@property final auto ref
		{
			Vector Translation() { mixin(MGPS!(Vector, 16)()); }
			UObject.Quat Quaternion() { mixin(MGPS!(UObject.Quat, 0)()); }
		}
	}
	struct AimComponent
	{
		private ubyte __buffer__[304];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeAimOffset.AimComponent")()); }
		@property final auto ref
		{
			AnimNodeAimOffset.AimTransform RD() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 272)()); }
			AnimNodeAimOffset.AimTransform RC() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 240)()); }
			AnimNodeAimOffset.AimTransform RU() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 208)()); }
			AnimNodeAimOffset.AimTransform CD() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 176)()); }
			AnimNodeAimOffset.AimTransform CC() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 144)()); }
			AnimNodeAimOffset.AimTransform CU() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 112)()); }
			AnimNodeAimOffset.AimTransform LD() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 80)()); }
			AnimNodeAimOffset.AimTransform LC() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 48)()); }
			AnimNodeAimOffset.AimTransform LU() { mixin(MGPS!(AnimNodeAimOffset.AimTransform, 16)()); }
			ScriptName BoneName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	struct AimOffsetProfile
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeAimOffset.AimOffsetProfile")()); }
		@property final auto ref
		{
			ScriptArray!(AnimNodeAimOffset.AimComponent) AimComponents() { mixin(MGPS!(ScriptArray!(AnimNodeAimOffset.AimComponent), 24)()); }
			ScriptName AnimName_RD() { mixin(MGPS!(ScriptName, 100)()); }
			ScriptName AnimName_RC() { mixin(MGPS!(ScriptName, 92)()); }
			ScriptName AnimName_RU() { mixin(MGPS!(ScriptName, 84)()); }
			ScriptName AnimName_CD() { mixin(MGPS!(ScriptName, 76)()); }
			ScriptName AnimName_CC() { mixin(MGPS!(ScriptName, 68)()); }
			ScriptName AnimName_CU() { mixin(MGPS!(ScriptName, 60)()); }
			ScriptName AnimName_LD() { mixin(MGPS!(ScriptName, 52)()); }
			ScriptName AnimName_LC() { mixin(MGPS!(ScriptName, 44)()); }
			ScriptName AnimName_LU() { mixin(MGPS!(ScriptName, 36)()); }
			UObject.Vector2D VerticalRange() { mixin(MGPS!(UObject.Vector2D, 16)()); }
			UObject.Vector2D HorizontalRange() { mixin(MGPS!(UObject.Vector2D, 8)()); }
			ScriptName ProfileName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) RequiredBones() { mixin(MGPC!(ScriptArray!(ubyte), 272)()); }
			ScriptArray!(ubyte) AimCpntIndexLUT() { mixin(MGPC!(ScriptArray!(ubyte), 284)()); }
			ScriptArray!(AnimNodeAimOffset.AimOffsetProfile) Profiles() { mixin(MGPC!(ScriptArray!(AnimNodeAimOffset.AimOffsetProfile), 300)()); }
			int CurrentProfileIndex() { mixin(MGPC!(int, 312)()); }
			AnimNodeAimOffset TemplateNode() { mixin(MGPC!(AnimNodeAimOffset, 296)()); }
			AnimNodeAimOffset.EAnimAimDir ForcedAimDir() { mixin(MGPC!(AnimNodeAimOffset.EAnimAimDir, 268)()); }
			int PassThroughAtOrAboveLOD() { mixin(MGPC!(int, 264)()); }
			UObject.Vector2D AngleOffset() { mixin(MGPC!(UObject.Vector2D, 252)()); }
			UObject.Vector2D Aim() { mixin(MGPC!(UObject.Vector2D, 244)()); }
		}
		bool bSynchronizeNodesInEditor() { mixin(MGBPC!(260, 0x8)()); }
		bool bSynchronizeNodesInEditor(bool val) { mixin(MSBPC!(260, 0x8)()); }
		bool bPassThroughWhenNotRendered() { mixin(MGBPC!(260, 0x4)()); }
		bool bPassThroughWhenNotRendered(bool val) { mixin(MSBPC!(260, 0x4)()); }
		bool bBakeFromAnimations() { mixin(MGBPC!(260, 0x2)()); }
		bool bBakeFromAnimations(bool val) { mixin(MSBPC!(260, 0x2)()); }
		bool bForceAimDir() { mixin(MGBPC!(260, 0x1)()); }
		bool bForceAimDir(bool val) { mixin(MSBPC!(260, 0x1)()); }
	}
final:
	void SetActiveProfileByName(ScriptName ProfileName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveProfileByName, params.ptr, cast(void*)0);
	}
	void SetActiveProfileByIndex(int ProfileIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ProfileIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveProfileByIndex, params.ptr, cast(void*)0);
	}
}

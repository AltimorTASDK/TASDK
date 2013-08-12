module UnrealScript.Engine.AnimNodeAimOffset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeAimOffset : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeAimOffset")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetActiveProfileByName;
			ScriptFunction mSetActiveProfileByIndex;
		}
		public @property static final
		{
			ScriptFunction SetActiveProfileByName() { return mSetActiveProfileByName ? mSetActiveProfileByName : (mSetActiveProfileByName = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeAimOffset.SetActiveProfileByName")); }
			ScriptFunction SetActiveProfileByIndex() { return mSetActiveProfileByIndex ? mSetActiveProfileByIndex : (mSetActiveProfileByIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeAimOffset.SetActiveProfileByIndex")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeAimOffset.AimTransform")); }
		@property final auto ref
		{
			Vector Translation() { return *cast(Vector*)(cast(size_t)&this + 16); }
			UObject.Quat Quaternion() { return *cast(UObject.Quat*)(cast(size_t)&this + 0); }
		}
	}
	struct AimComponent
	{
		private ubyte __buffer__[304];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeAimOffset.AimComponent")); }
		@property final auto ref
		{
			AnimNodeAimOffset.AimTransform RD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 272); }
			AnimNodeAimOffset.AimTransform RC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 240); }
			AnimNodeAimOffset.AimTransform RU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 208); }
			AnimNodeAimOffset.AimTransform CD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 176); }
			AnimNodeAimOffset.AimTransform CC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 144); }
			AnimNodeAimOffset.AimTransform CU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 112); }
			AnimNodeAimOffset.AimTransform LD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 80); }
			AnimNodeAimOffset.AimTransform LC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 48); }
			AnimNodeAimOffset.AimTransform LU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 16); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct AimOffsetProfile
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.AnimNodeAimOffset.AimOffsetProfile")); }
		@property final auto ref
		{
			ScriptArray!(AnimNodeAimOffset.AimComponent) AimComponents() { return *cast(ScriptArray!(AnimNodeAimOffset.AimComponent)*)(cast(size_t)&this + 24); }
			ScriptName AnimName_RD() { return *cast(ScriptName*)(cast(size_t)&this + 100); }
			ScriptName AnimName_RC() { return *cast(ScriptName*)(cast(size_t)&this + 92); }
			ScriptName AnimName_RU() { return *cast(ScriptName*)(cast(size_t)&this + 84); }
			ScriptName AnimName_CD() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
			ScriptName AnimName_CC() { return *cast(ScriptName*)(cast(size_t)&this + 68); }
			ScriptName AnimName_CU() { return *cast(ScriptName*)(cast(size_t)&this + 60); }
			ScriptName AnimName_LD() { return *cast(ScriptName*)(cast(size_t)&this + 52); }
			ScriptName AnimName_LC() { return *cast(ScriptName*)(cast(size_t)&this + 44); }
			ScriptName AnimName_LU() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
			UObject.Vector2D VerticalRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 16); }
			UObject.Vector2D HorizontalRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 8); }
			ScriptName ProfileName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 272); }
			ScriptArray!(ubyte) AimCpntIndexLUT() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 284); }
			ScriptArray!(AnimNodeAimOffset.AimOffsetProfile) Profiles() { return *cast(ScriptArray!(AnimNodeAimOffset.AimOffsetProfile)*)(cast(size_t)cast(void*)this + 300); }
			int CurrentProfileIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 312); }
			AnimNodeAimOffset TemplateNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 296); }
			AnimNodeAimOffset.EAnimAimDir ForcedAimDir() { return *cast(AnimNodeAimOffset.EAnimAimDir*)(cast(size_t)cast(void*)this + 268); }
			int PassThroughAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
			UObject.Vector2D AngleOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 252); }
			UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bSynchronizeNodesInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x8) != 0; }
		bool bSynchronizeNodesInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x8; } return val; }
		bool bPassThroughWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x4) != 0; }
		bool bPassThroughWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x4; } return val; }
		bool bBakeFromAnimations() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x2) != 0; }
		bool bBakeFromAnimations(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x2; } return val; }
		bool bForceAimDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bForceAimDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
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

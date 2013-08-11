module UnrealScript.Engine.AnimNodeAimOffset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeAimOffset : AnimNodeBlendBase
{
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
		public @property final auto ref Vector Translation() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Translation[12];
		public @property final auto ref UObject.Quat Quaternion() { return *cast(UObject.Quat*)(cast(size_t)&this + 0); }
		private ubyte __Quaternion[16];
	}
	struct AimComponent
	{
		public @property final auto ref AnimNodeAimOffset.AimTransform RD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 272); }
		private ubyte __RD[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform RC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 240); }
		private ubyte __RC[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform RU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 208); }
		private ubyte __RU[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform CD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 176); }
		private ubyte __CD[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform CC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 144); }
		private ubyte __CC[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform CU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 112); }
		private ubyte __CU[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform LD() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 80); }
		private ubyte __LD[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform LC() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 48); }
		private ubyte __LC[32];
		public @property final auto ref AnimNodeAimOffset.AimTransform LU() { return *cast(AnimNodeAimOffset.AimTransform*)(cast(size_t)&this + 16); }
		private ubyte __LU[32];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneName[8];
	}
	struct AimOffsetProfile
	{
		public @property final auto ref ScriptArray!(AnimNodeAimOffset.AimComponent) AimComponents() { return *cast(ScriptArray!(AnimNodeAimOffset.AimComponent)*)(cast(size_t)&this + 24); }
		private ubyte __AimComponents[12];
		public @property final auto ref ScriptName AnimName_RD() { return *cast(ScriptName*)(cast(size_t)&this + 100); }
		private ubyte __AnimName_RD[8];
		public @property final auto ref ScriptName AnimName_RC() { return *cast(ScriptName*)(cast(size_t)&this + 92); }
		private ubyte __AnimName_RC[8];
		public @property final auto ref ScriptName AnimName_RU() { return *cast(ScriptName*)(cast(size_t)&this + 84); }
		private ubyte __AnimName_RU[8];
		public @property final auto ref ScriptName AnimName_CD() { return *cast(ScriptName*)(cast(size_t)&this + 76); }
		private ubyte __AnimName_CD[8];
		public @property final auto ref ScriptName AnimName_CC() { return *cast(ScriptName*)(cast(size_t)&this + 68); }
		private ubyte __AnimName_CC[8];
		public @property final auto ref ScriptName AnimName_CU() { return *cast(ScriptName*)(cast(size_t)&this + 60); }
		private ubyte __AnimName_CU[8];
		public @property final auto ref ScriptName AnimName_LD() { return *cast(ScriptName*)(cast(size_t)&this + 52); }
		private ubyte __AnimName_LD[8];
		public @property final auto ref ScriptName AnimName_LC() { return *cast(ScriptName*)(cast(size_t)&this + 44); }
		private ubyte __AnimName_LC[8];
		public @property final auto ref ScriptName AnimName_LU() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
		private ubyte __AnimName_LU[8];
		public @property final auto ref UObject.Vector2D VerticalRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 16); }
		private ubyte __VerticalRange[8];
		public @property final auto ref UObject.Vector2D HorizontalRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 8); }
		private ubyte __HorizontalRange[8];
		public @property final auto ref ScriptName ProfileName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ProfileName[8];
	}
	public @property final auto ref ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref ScriptArray!(ubyte) AimCpntIndexLUT() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref ScriptArray!(AnimNodeAimOffset.AimOffsetProfile) Profiles() { return *cast(ScriptArray!(AnimNodeAimOffset.AimOffsetProfile)*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref int CurrentProfileIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref AnimNodeAimOffset TemplateNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref AnimNodeAimOffset.EAnimAimDir ForcedAimDir() { return *cast(AnimNodeAimOffset.EAnimAimDir*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref int PassThroughAtOrAboveLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 264); }
	public @property final bool bSynchronizeNodesInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x8) != 0; }
	public @property final bool bSynchronizeNodesInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x8; } return val; }
	public @property final bool bPassThroughWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x4) != 0; }
	public @property final bool bPassThroughWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x4; } return val; }
	public @property final bool bBakeFromAnimations() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x2) != 0; }
	public @property final bool bBakeFromAnimations(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x2; } return val; }
	public @property final bool bForceAimDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
	public @property final bool bForceAimDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	public @property final auto ref UObject.Vector2D AngleOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 244); }
	final void SetActiveProfileByName(ScriptName ProfileName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10809], params.ptr, cast(void*)0);
	}
	final void SetActiveProfileByIndex(int ProfileIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ProfileIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10811], params.ptr, cast(void*)0);
	}
}

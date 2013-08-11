module UnrealScript.TribesGame.TrAnimNodeTurnInPlace;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeAimOffset;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlend;
import UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

extern(C++) interface TrAnimNodeTurnInPlace : AnimNodeBlend
{
	enum ForcedTransitionAngle : ubyte
	{
		FTA_NONE = 0,
		FTA_90 = 1,
		FTA_180 = 2,
		FTA_MAX = 3,
	}
	struct RotTransitionInfo
	{
		public @property final auto ref ScriptName TransName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __TransName[8];
		public @property final auto ref float RotationOffset() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __RotationOffset[4];
	}
	public @property final auto ref ScriptArray!(TrAnimNodeAimOffset) m_OffsetNodes() { return *cast(ScriptArray!(TrAnimNodeAimOffset)*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptArray!(TrAnimNodeTurnInPlace.RotTransitionInfo) m_RotTransitions() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace.RotTransitionInfo)*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref ScriptArray!(TrAnimNodeTurnInPlace_Player) m_PlayerNodes() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace_Player)*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Rotator m_InterpRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref float m_fTurnInterpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref float m_fIgnoredTransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref float m_RemainingInterpolationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref float m_fInterpolationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float m_fChooseNewTransitionPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref TrAnimNodeTurnInPlace.ForcedTransitionAngle m_ForcedTransitionAngle() { return *cast(TrAnimNodeTurnInPlace.ForcedTransitionAngle*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref float m_fTransitionThresholdAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref int m_nCurrentTransitionIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float m_fTransitionBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float m_fRelativeOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref int m_nPitchOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref int m_nYawOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref int m_nLastRootBoneYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float m_fPawnRotationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref int m_nLastPawnPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref int m_nLastPawnYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
	public @property final bool m_bDisableAllTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x8000) != 0; }
	public @property final bool m_bDisableAllTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x8000; } return val; }
	public @property final bool m_bConstrictIdleYawOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x4000) != 0; }
	public @property final bool m_bConstrictIdleYawOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x4000; } return val; }
	public @property final bool m_bUse180ShortestRoute() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x2000) != 0; }
	public @property final bool m_bUse180ShortestRoute(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x2000; } return val; }
	public @property final bool m_bUsePawnRotationAtZeroVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1000) != 0; }
	public @property final bool m_bUsePawnRotationAtZeroVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1000; } return val; }
	public @property final bool m_bTurnTowardsVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x800) != 0; }
	public @property final bool m_bTurnTowardsVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x800; } return val; }
	public @property final bool m_bOnlyUpdateRotationWhenMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x400) != 0; }
	public @property final bool m_bOnlyUpdateRotationWhenMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x400; } return val; }
	public @property final bool m_bIgnoreTransitionAnimations() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x200) != 0; }
	public @property final bool m_bIgnoreTransitionAnimations(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x200; } return val; }
	public @property final bool m_bAlwaysUpdateYawOffset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x100) != 0; }
	public @property final bool m_bAlwaysUpdateYawOffset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x100; } return val; }
	public @property final bool m_bMirrorOffsetWhenPawnMirrored() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x80) != 0; }
	public @property final bool m_bMirrorOffsetWhenPawnMirrored(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x80; } return val; }
	public @property final bool m_bOverrideInterpolationTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x40) != 0; }
	public @property final bool m_bOverrideInterpolationTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x40; } return val; }
	public @property final bool m_bCanChooseNewTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x20) != 0; }
	public @property final bool m_bCanChooseNewTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x20; } return val; }
	public @property final bool m_bPlayingTurnTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x10) != 0; }
	public @property final bool m_bPlayingTurnTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x10; } return val; }
	public @property final bool m_bDelayBlendOutToPlayAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x8) != 0; }
	public @property final bool m_bDelayBlendOutToPlayAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x8; } return val; }
	public @property final bool m_bDisableRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x4) != 0; }
	public @property final bool m_bDisableRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x4; } return val; }
	public @property final bool m_bRootRotInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x2) != 0; }
	public @property final bool m_bRootRotInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x2; } return val; }
	public @property final bool m_bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
	public @property final bool m_bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	public @property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 260); }
}

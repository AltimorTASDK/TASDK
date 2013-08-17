module UnrealScript.TribesGame.TrAnimNodeTurnInPlace;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeAimOffset;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlend;
import UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Player;

extern(C++) interface TrAnimNodeTurnInPlace : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeTurnInPlace")); }
	private static __gshared TrAnimNodeTurnInPlace mDefaultProperties;
	@property final static TrAnimNodeTurnInPlace DefaultProperties() { mixin(MGDPC("TrAnimNodeTurnInPlace", "TrAnimNodeTurnInPlace TribesGame.Default__TrAnimNodeTurnInPlace")); }
	enum ForcedTransitionAngle : ubyte
	{
		FTA_NONE = 0,
		FTA_90 = 1,
		FTA_180 = 2,
		FTA_MAX = 3,
	}
	struct RotTransitionInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrAnimNodeTurnInPlace.RotTransitionInfo")); }
		@property final auto ref
		{
			ScriptName TransName() { mixin(MGPS("ScriptName", 4)); }
			float RotationOffset() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrAnimNodeAimOffset) m_OffsetNodes() { mixin(MGPC("ScriptArray!(TrAnimNodeAimOffset)", 296)); }
			ScriptArray!(TrAnimNodeTurnInPlace.RotTransitionInfo) m_RotTransitions() { mixin(MGPC("ScriptArray!(TrAnimNodeTurnInPlace.RotTransitionInfo)", 308)); }
			ScriptArray!(TrAnimNodeTurnInPlace_Player) m_PlayerNodes() { mixin(MGPC("ScriptArray!(TrAnimNodeTurnInPlace_Player)", 348)); }
			Rotator m_InterpRotation() { mixin(MGPC("Rotator", 368)); }
			float m_fTurnInterpTime() { mixin(MGPC("float", 364)); }
			float m_fIgnoredTransitionTime() { mixin(MGPC("float", 360)); }
			float m_RemainingInterpolationTime() { mixin(MGPC("float", 344)); }
			float m_fInterpolationTime() { mixin(MGPC("float", 340)); }
			float m_fChooseNewTransitionPercent() { mixin(MGPC("float", 336)); }
			TrAnimNodeTurnInPlace.ForcedTransitionAngle m_ForcedTransitionAngle() { mixin(MGPC("TrAnimNodeTurnInPlace.ForcedTransitionAngle", 332)); }
			float m_fTransitionThresholdAngle() { mixin(MGPC("float", 328)); }
			int m_nCurrentTransitionIndex() { mixin(MGPC("int", 324)); }
			float m_fTransitionBlendTime() { mixin(MGPC("float", 320)); }
			float m_fRelativeOffset() { mixin(MGPC("float", 292)); }
			int m_nPitchOffset() { mixin(MGPC("int", 288)); }
			int m_nYawOffset() { mixin(MGPC("int", 284)); }
			int m_nLastRootBoneYaw() { mixin(MGPC("int", 280)); }
			float m_fPawnRotationRate() { mixin(MGPC("float", 276)); }
			int m_nLastPawnPitch() { mixin(MGPC("int", 272)); }
			int m_nLastPawnYaw() { mixin(MGPC("int", 268)); }
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 260)); }
		}
		bool m_bDisableAllTurning() { mixin(MGBPC(264, 0x8000)); }
		bool m_bDisableAllTurning(bool val) { mixin(MSBPC(264, 0x8000)); }
		bool m_bConstrictIdleYawOffset() { mixin(MGBPC(264, 0x4000)); }
		bool m_bConstrictIdleYawOffset(bool val) { mixin(MSBPC(264, 0x4000)); }
		bool m_bUse180ShortestRoute() { mixin(MGBPC(264, 0x2000)); }
		bool m_bUse180ShortestRoute(bool val) { mixin(MSBPC(264, 0x2000)); }
		bool m_bUsePawnRotationAtZeroVelocity() { mixin(MGBPC(264, 0x1000)); }
		bool m_bUsePawnRotationAtZeroVelocity(bool val) { mixin(MSBPC(264, 0x1000)); }
		bool m_bTurnTowardsVelocity() { mixin(MGBPC(264, 0x800)); }
		bool m_bTurnTowardsVelocity(bool val) { mixin(MSBPC(264, 0x800)); }
		bool m_bOnlyUpdateRotationWhenMoving() { mixin(MGBPC(264, 0x400)); }
		bool m_bOnlyUpdateRotationWhenMoving(bool val) { mixin(MSBPC(264, 0x400)); }
		bool m_bIgnoreTransitionAnimations() { mixin(MGBPC(264, 0x200)); }
		bool m_bIgnoreTransitionAnimations(bool val) { mixin(MSBPC(264, 0x200)); }
		bool m_bAlwaysUpdateYawOffset() { mixin(MGBPC(264, 0x100)); }
		bool m_bAlwaysUpdateYawOffset(bool val) { mixin(MSBPC(264, 0x100)); }
		bool m_bMirrorOffsetWhenPawnMirrored() { mixin(MGBPC(264, 0x80)); }
		bool m_bMirrorOffsetWhenPawnMirrored(bool val) { mixin(MSBPC(264, 0x80)); }
		bool m_bOverrideInterpolationTime() { mixin(MGBPC(264, 0x40)); }
		bool m_bOverrideInterpolationTime(bool val) { mixin(MSBPC(264, 0x40)); }
		bool m_bCanChooseNewTransition() { mixin(MGBPC(264, 0x20)); }
		bool m_bCanChooseNewTransition(bool val) { mixin(MSBPC(264, 0x20)); }
		bool m_bPlayingTurnTransition() { mixin(MGBPC(264, 0x10)); }
		bool m_bPlayingTurnTransition(bool val) { mixin(MSBPC(264, 0x10)); }
		bool m_bDelayBlendOutToPlayAnim() { mixin(MGBPC(264, 0x8)); }
		bool m_bDelayBlendOutToPlayAnim(bool val) { mixin(MSBPC(264, 0x8)); }
		bool m_bDisableRotation() { mixin(MGBPC(264, 0x4)); }
		bool m_bDisableRotation(bool val) { mixin(MSBPC(264, 0x4)); }
		bool m_bRootRotInitialized() { mixin(MGBPC(264, 0x2)); }
		bool m_bRootRotInitialized(bool val) { mixin(MSBPC(264, 0x2)); }
		bool m_bInitialized() { mixin(MGBPC(264, 0x1)); }
		bool m_bInitialized(bool val) { mixin(MSBPC(264, 0x1)); }
	}
}

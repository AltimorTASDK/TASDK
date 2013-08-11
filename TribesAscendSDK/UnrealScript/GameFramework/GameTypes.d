module UnrealScript.GameFramework.GameTypes;

import ScriptClasses;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameSpecialMove;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface GameTypes : UObject
{
	public static immutable auto LOADING_MOVIE = "LoadingMovie";
	enum EShakeParam : ubyte
	{
		ESP_OffsetRandom = 0,
		ESP_OffsetZero = 1,
		ESP_MAX = 2,
	}
	struct AICmdHistoryItem
	{
		public @property final auto ref ScriptClass CmdClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __CmdClass[4];
		public @property final auto ref float TimeStamp() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TimeStamp[4];
		public @property final auto ref ScriptString VerboseString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __VerboseString[12];
	}
	struct SpecialMoveStruct
	{
		public @property final auto ref ScriptName SpecialMoveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SpecialMoveName[8];
		public @property final auto ref GamePawn InteractionPawn() { return *cast(GamePawn*)(cast(size_t)&this + 8); }
		private ubyte __InteractionPawn[4];
		public @property final auto ref Actor InteractionActor() { return *cast(Actor*)(cast(size_t)&this + 12); }
		private ubyte __InteractionActor[4];
		public @property final auto ref int Flags() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Flags[4];
	}
	struct GameSpecialMoveInfo
	{
		public @property final auto ref ScriptName SpecialMoveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SpecialMoveName[8];
		public @property final auto ref ScriptClass SpecialMoveClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
		private ubyte __SpecialMoveClass[4];
		public @property final auto ref GameSpecialMove SpecialMoveInstance() { return *cast(GameSpecialMove*)(cast(size_t)&this + 12); }
		private ubyte __SpecialMoveInstance[4];
	}
	struct TakeHitInfo
	{
		public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __HitLocation[12];
		public @property final auto ref Vector Momentum() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __Momentum[12];
		// WARNING: Property 'DamageType' has the same name as a defined type!
		public @property final auto ref Pawn InstigatedBy() { return *cast(Pawn*)(cast(size_t)&this + 28); }
		private ubyte __InstigatedBy[4];
		public @property final auto ref ubyte HitBoneIndex() { return *cast(ubyte*)(cast(size_t)&this + 32); }
		private ubyte __HitBoneIndex[1];
		// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
		public @property final auto ref float Damage() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __Damage[4];
		public @property final auto ref Vector RadialDamageOrigin() { return *cast(Vector*)(cast(size_t)&this + 44); }
		private ubyte __RadialDamageOrigin[12];
	}
	struct ScreenShakeStruct
	{
		public @property final auto ref float TimeToGo() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __TimeToGo[4];
		public @property final auto ref float TimeDuration() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TimeDuration[4];
		public @property final auto ref Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __RotAmplitude[12];
		public @property final auto ref Vector RotFrequency() { return *cast(Vector*)(cast(size_t)&this + 20); }
		private ubyte __RotFrequency[12];
		public @property final auto ref Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __RotSinOffset[12];
		public @property final auto ref GameTypes.ShakeParams RotParam() { return *cast(GameTypes.ShakeParams*)(cast(size_t)&this + 44); }
		private ubyte __RotParam[4];
		public @property final auto ref Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)&this + 48); }
		private ubyte __LocAmplitude[12];
		public @property final auto ref Vector LocFrequency() { return *cast(Vector*)(cast(size_t)&this + 60); }
		private ubyte __LocFrequency[12];
		public @property final auto ref Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 72); }
		private ubyte __LocSinOffset[12];
		public @property final auto ref GameTypes.ShakeParams LocParam() { return *cast(GameTypes.ShakeParams*)(cast(size_t)&this + 84); }
		private ubyte __LocParam[4];
		public @property final auto ref float FOVAmplitude() { return *cast(float*)(cast(size_t)&this + 88); }
		private ubyte __FOVAmplitude[4];
		public @property final auto ref float FOVFrequency() { return *cast(float*)(cast(size_t)&this + 92); }
		private ubyte __FOVFrequency[4];
		public @property final auto ref float FOVSinOffset() { return *cast(float*)(cast(size_t)&this + 96); }
		private ubyte __FOVSinOffset[4];
		public @property final auto ref GameTypes.EShakeParam FOVParam() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 100); }
		private ubyte __FOVParam[1];
		public @property final auto ref ScriptName ShakeName() { return *cast(ScriptName*)(cast(size_t)&this + 104); }
		private ubyte __ShakeName[8];
		public @property final bool bOverrideTargetingDampening() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x1) != 0; }
		public @property final bool bOverrideTargetingDampening(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x1; } return val; }
		private ubyte __bOverrideTargetingDampening[4];
		public @property final auto ref float TargetingDampening() { return *cast(float*)(cast(size_t)&this + 116); }
		private ubyte __TargetingDampening[4];
	}
	struct ShakeParams
	{
		public @property final auto ref GameTypes.EShakeParam X() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 0); }
		private ubyte __X[1];
		public @property final auto ref GameTypes.EShakeParam Y() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 1); }
		private ubyte __Y[1];
		public @property final auto ref GameTypes.EShakeParam Z() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 2); }
		private ubyte __Z[1];
		public @property final auto ref ubyte Padding() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		private ubyte __Padding[1];
	}
	struct ScreenShakeAnimStruct
	{
		public @property final auto ref CameraAnim Anim() { return *cast(CameraAnim*)(cast(size_t)&this + 0); }
		private ubyte __Anim[4];
		public @property final bool bUseDirectionalAnimVariants() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bUseDirectionalAnimVariants(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bUseDirectionalAnimVariants[4];
		public @property final auto ref CameraAnim Anim_Left() { return *cast(CameraAnim*)(cast(size_t)&this + 8); }
		private ubyte __Anim_Left[4];
		public @property final auto ref CameraAnim Anim_Right() { return *cast(CameraAnim*)(cast(size_t)&this + 12); }
		private ubyte __Anim_Right[4];
		public @property final auto ref CameraAnim Anim_Rear() { return *cast(CameraAnim*)(cast(size_t)&this + 16); }
		private ubyte __Anim_Rear[4];
		public @property final auto ref float AnimPlayRate() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __AnimPlayRate[4];
		public @property final auto ref float AnimScale() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __AnimScale[4];
		public @property final auto ref float AnimBlendInTime() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __AnimBlendInTime[4];
		public @property final auto ref float AnimBlendOutTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __AnimBlendOutTime[4];
		public @property final bool bRandomSegment() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
		public @property final bool bRandomSegment(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
		private ubyte __bRandomSegment[4];
		public @property final auto ref float RandomSegmentDuration() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __RandomSegmentDuration[4];
		public @property final bool bSingleInstance() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bSingleInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bSingleInstance[4];
	}
}

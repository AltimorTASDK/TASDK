module UnrealScript.GameFramework.GameTypes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GamePawn;
import UnrealScript.Engine.Pawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameSpecialMove;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface GameTypes : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameTypes")); }
	private static __gshared GameTypes mDefaultProperties;
	@property final static GameTypes DefaultProperties() { mixin(MGDPC("GameTypes", "GameTypes GameFramework.Default__GameTypes")); }
	static struct Constants
	{
		enum LOADING_MOVIE = "LoadingMovie";
	}
	enum EShakeParam : ubyte
	{
		ESP_OffsetRandom = 0,
		ESP_OffsetZero = 1,
		ESP_MAX = 2,
	}
	struct AICmdHistoryItem
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.AICmdHistoryItem")); }
		@property final auto ref
		{
			ScriptClass CmdClass() { mixin(MGPS("ScriptClass", 0)); }
			float TimeStamp() { mixin(MGPS("float", 4)); }
			ScriptString VerboseString() { mixin(MGPS("ScriptString", 8)); }
		}
	}
	struct SpecialMoveStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.SpecialMoveStruct")); }
		@property final auto ref
		{
			ScriptName SpecialMoveName() { mixin(MGPS("ScriptName", 0)); }
			GamePawn InteractionPawn() { mixin(MGPS("GamePawn", 8)); }
			Actor InteractionActor() { mixin(MGPS("Actor", 12)); }
			int Flags() { mixin(MGPS("int", 16)); }
		}
	}
	struct GameSpecialMoveInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.GameSpecialMoveInfo")); }
		@property final auto ref
		{
			ScriptName SpecialMoveName() { mixin(MGPS("ScriptName", 0)); }
			ScriptClass SpecialMoveClass() { mixin(MGPS("ScriptClass", 8)); }
			GameSpecialMove SpecialMoveInstance() { mixin(MGPS("GameSpecialMove", 12)); }
		}
	}
	struct TakeHitInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.TakeHitInfo")); }
		@property final auto ref
		{
			Vector HitLocation() { mixin(MGPS("Vector", 0)); }
			Vector Momentum() { mixin(MGPS("Vector", 12)); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			Pawn InstigatedBy() { mixin(MGPS("Pawn", 28)); }
			ubyte HitBoneIndex() { mixin(MGPS("ubyte", 32)); }
			// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
			float Damage() { mixin(MGPS("float", 40)); }
			Vector RadialDamageOrigin() { mixin(MGPS("Vector", 44)); }
		}
	}
	struct ScreenShakeStruct
	{
		private ubyte __buffer__[120];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.ScreenShakeStruct")); }
		@property final
		{
			auto ref
			{
				float TimeToGo() { mixin(MGPS("float", 0)); }
				float TimeDuration() { mixin(MGPS("float", 4)); }
				Vector RotAmplitude() { mixin(MGPS("Vector", 8)); }
				Vector RotFrequency() { mixin(MGPS("Vector", 20)); }
				Vector RotSinOffset() { mixin(MGPS("Vector", 32)); }
				GameTypes.ShakeParams RotParam() { mixin(MGPS("GameTypes.ShakeParams", 44)); }
				Vector LocAmplitude() { mixin(MGPS("Vector", 48)); }
				Vector LocFrequency() { mixin(MGPS("Vector", 60)); }
				Vector LocSinOffset() { mixin(MGPS("Vector", 72)); }
				GameTypes.ShakeParams LocParam() { mixin(MGPS("GameTypes.ShakeParams", 84)); }
				float FOVAmplitude() { mixin(MGPS("float", 88)); }
				float FOVFrequency() { mixin(MGPS("float", 92)); }
				float FOVSinOffset() { mixin(MGPS("float", 96)); }
				GameTypes.EShakeParam FOVParam() { mixin(MGPS("GameTypes.EShakeParam", 100)); }
				ScriptName ShakeName() { mixin(MGPS("ScriptName", 104)); }
				float TargetingDampening() { mixin(MGPS("float", 116)); }
			}
			bool bOverrideTargetingDampening() { mixin(MGBPS(112, 0x1)); }
			bool bOverrideTargetingDampening(bool val) { mixin(MSBPS(112, 0x1)); }
		}
	}
	struct ShakeParams
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.ShakeParams")); }
		@property final auto ref
		{
			GameTypes.EShakeParam X() { mixin(MGPS("GameTypes.EShakeParam", 0)); }
			GameTypes.EShakeParam Y() { mixin(MGPS("GameTypes.EShakeParam", 1)); }
			GameTypes.EShakeParam Z() { mixin(MGPS("GameTypes.EShakeParam", 2)); }
			ubyte Padding() { mixin(MGPS("ubyte", 3)); }
		}
	}
	struct ScreenShakeAnimStruct
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GameFramework.GameTypes.ScreenShakeAnimStruct")); }
		@property final
		{
			auto ref
			{
				CameraAnim Anim() { mixin(MGPS("CameraAnim", 0)); }
				CameraAnim Anim_Left() { mixin(MGPS("CameraAnim", 8)); }
				CameraAnim Anim_Right() { mixin(MGPS("CameraAnim", 12)); }
				CameraAnim Anim_Rear() { mixin(MGPS("CameraAnim", 16)); }
				float AnimPlayRate() { mixin(MGPS("float", 20)); }
				float AnimScale() { mixin(MGPS("float", 24)); }
				float AnimBlendInTime() { mixin(MGPS("float", 28)); }
				float AnimBlendOutTime() { mixin(MGPS("float", 32)); }
				float RandomSegmentDuration() { mixin(MGPS("float", 40)); }
			}
			bool bUseDirectionalAnimVariants() { mixin(MGBPS(4, 0x1)); }
			bool bUseDirectionalAnimVariants(bool val) { mixin(MSBPS(4, 0x1)); }
			bool bRandomSegment() { mixin(MGBPS(36, 0x1)); }
			bool bRandomSegment(bool val) { mixin(MSBPS(36, 0x1)); }
			bool bSingleInstance() { mixin(MGBPS(44, 0x1)); }
			bool bSingleInstance(bool val) { mixin(MSBPS(44, 0x1)); }
		}
	}
}

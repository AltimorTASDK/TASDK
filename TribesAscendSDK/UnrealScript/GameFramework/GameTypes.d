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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameTypes")); }
	private static __gshared GameTypes mDefaultProperties;
	@property final static GameTypes DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameTypes)("GameTypes GameFramework.Default__GameTypes")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.AICmdHistoryItem")); }
		@property final auto ref
		{
			ScriptClass CmdClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
			float TimeStamp() { return *cast(float*)(cast(size_t)&this + 4); }
			ScriptString VerboseString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		}
	}
	struct SpecialMoveStruct
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.SpecialMoveStruct")); }
		@property final auto ref
		{
			ScriptName SpecialMoveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			GamePawn InteractionPawn() { return *cast(GamePawn*)(cast(size_t)&this + 8); }
			Actor InteractionActor() { return *cast(Actor*)(cast(size_t)&this + 12); }
			int Flags() { return *cast(int*)(cast(size_t)&this + 16); }
		}
	}
	struct GameSpecialMoveInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.GameSpecialMoveInfo")); }
		@property final auto ref
		{
			ScriptName SpecialMoveName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptClass SpecialMoveClass() { return *cast(ScriptClass*)(cast(size_t)&this + 8); }
			GameSpecialMove SpecialMoveInstance() { return *cast(GameSpecialMove*)(cast(size_t)&this + 12); }
		}
	}
	struct TakeHitInfo
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.TakeHitInfo")); }
		@property final auto ref
		{
			Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 0); }
			Vector Momentum() { return *cast(Vector*)(cast(size_t)&this + 12); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			Pawn InstigatedBy() { return *cast(Pawn*)(cast(size_t)&this + 28); }
			ubyte HitBoneIndex() { return *cast(ubyte*)(cast(size_t)&this + 32); }
			// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
			float Damage() { return *cast(float*)(cast(size_t)&this + 40); }
			Vector RadialDamageOrigin() { return *cast(Vector*)(cast(size_t)&this + 44); }
		}
	}
	struct ScreenShakeStruct
	{
		private ubyte __buffer__[120];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.ScreenShakeStruct")); }
		@property final
		{
			auto ref
			{
				float TimeToGo() { return *cast(float*)(cast(size_t)&this + 0); }
				float TimeDuration() { return *cast(float*)(cast(size_t)&this + 4); }
				Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)&this + 8); }
				Vector RotFrequency() { return *cast(Vector*)(cast(size_t)&this + 20); }
				Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
				GameTypes.ShakeParams RotParam() { return *cast(GameTypes.ShakeParams*)(cast(size_t)&this + 44); }
				Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)&this + 48); }
				Vector LocFrequency() { return *cast(Vector*)(cast(size_t)&this + 60); }
				Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 72); }
				GameTypes.ShakeParams LocParam() { return *cast(GameTypes.ShakeParams*)(cast(size_t)&this + 84); }
				float FOVAmplitude() { return *cast(float*)(cast(size_t)&this + 88); }
				float FOVFrequency() { return *cast(float*)(cast(size_t)&this + 92); }
				float FOVSinOffset() { return *cast(float*)(cast(size_t)&this + 96); }
				GameTypes.EShakeParam FOVParam() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 100); }
				ScriptName ShakeName() { return *cast(ScriptName*)(cast(size_t)&this + 104); }
				float TargetingDampening() { return *cast(float*)(cast(size_t)&this + 116); }
			}
			bool bOverrideTargetingDampening() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x1) != 0; }
			bool bOverrideTargetingDampening(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x1; } return val; }
		}
	}
	struct ShakeParams
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.ShakeParams")); }
		@property final auto ref
		{
			GameTypes.EShakeParam X() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 0); }
			GameTypes.EShakeParam Y() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 1); }
			GameTypes.EShakeParam Z() { return *cast(GameTypes.EShakeParam*)(cast(size_t)&this + 2); }
			ubyte Padding() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		}
	}
	struct ScreenShakeAnimStruct
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameTypes.ScreenShakeAnimStruct")); }
		@property final
		{
			auto ref
			{
				CameraAnim Anim() { return *cast(CameraAnim*)(cast(size_t)&this + 0); }
				CameraAnim Anim_Left() { return *cast(CameraAnim*)(cast(size_t)&this + 8); }
				CameraAnim Anim_Right() { return *cast(CameraAnim*)(cast(size_t)&this + 12); }
				CameraAnim Anim_Rear() { return *cast(CameraAnim*)(cast(size_t)&this + 16); }
				float AnimPlayRate() { return *cast(float*)(cast(size_t)&this + 20); }
				float AnimScale() { return *cast(float*)(cast(size_t)&this + 24); }
				float AnimBlendInTime() { return *cast(float*)(cast(size_t)&this + 28); }
				float AnimBlendOutTime() { return *cast(float*)(cast(size_t)&this + 32); }
				float RandomSegmentDuration() { return *cast(float*)(cast(size_t)&this + 40); }
			}
			bool bUseDirectionalAnimVariants() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bUseDirectionalAnimVariants(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
			bool bRandomSegment() { return (*cast(uint*)(cast(size_t)&this + 36) & 0x1) != 0; }
			bool bRandomSegment(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 36) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 36) &= ~0x1; } return val; }
			bool bSingleInstance() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bSingleInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		}
	}
}

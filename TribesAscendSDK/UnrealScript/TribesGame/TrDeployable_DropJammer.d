module UnrealScript.TribesGame.TrDeployable_DropJammer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_DropJammer : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_DropJammer")()); }
	private static __gshared TrDeployable_DropJammer mDefaultProperties;
	@property final static TrDeployable_DropJammer DefaultProperties() { mixin(MGDPC!(TrDeployable_DropJammer, "TrDeployable_DropJammer TribesGame.Default__TrDeployable_DropJammer")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldDetectPawn;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mAddDetectedPawn;
			ScriptFunction mRemoveDetectedPawn;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction ShouldDetectPawn() { mixin(MGF!("mShouldDetectPawn", "Function TribesGame.TrDeployable_DropJammer.ShouldDetectPawn")()); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF!("mOnPowerStatusChanged", "Function TribesGame.TrDeployable_DropJammer.OnPowerStatusChanged")()); }
			ScriptFunction AddDetectedPawn() { mixin(MGF!("mAddDetectedPawn", "Function TribesGame.TrDeployable_DropJammer.AddDetectedPawn")()); }
			ScriptFunction RemoveDetectedPawn() { mixin(MGF!("mRemoveDetectedPawn", "Function TribesGame.TrDeployable_DropJammer.RemoveDetectedPawn")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrDeployable_DropJammer.GetMarker")()); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable_DropJammer.BlownUp")()); }
	}
final:
	bool ShouldDetectPawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDetectPawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	void AddDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDetectedPawn, params.ptr, cast(void*)0);
	}
	void RemoveDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveDetectedPawn, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}

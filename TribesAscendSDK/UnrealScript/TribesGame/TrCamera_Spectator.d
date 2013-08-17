module UnrealScript.TribesGame.TrCamera_Spectator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Camera;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrCamera_Spectator : Camera
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCamera_Spectator")()); }
	private static __gshared TrCamera_Spectator mDefaultProperties;
	@property final static TrCamera_Spectator DefaultProperties() { mixin(MGDPC!(TrCamera_Spectator, "TrCamera_Spectator TribesGame.Default__TrCamera_Spectator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitializeFor;
			ScriptFunction mUpdateCamera;
			ScriptFunction mUpdateViewTarget;
			ScriptFunction mShowHiddenPawn;
			ScriptFunction mSetFOV;
		}
		public @property static final
		{
			ScriptFunction InitializeFor() { mixin(MGF!("mInitializeFor", "Function TribesGame.TrCamera_Spectator.InitializeFor")()); }
			ScriptFunction UpdateCamera() { mixin(MGF!("mUpdateCamera", "Function TribesGame.TrCamera_Spectator.UpdateCamera")()); }
			ScriptFunction UpdateViewTarget() { mixin(MGF!("mUpdateViewTarget", "Function TribesGame.TrCamera_Spectator.UpdateViewTarget")()); }
			ScriptFunction ShowHiddenPawn() { mixin(MGF!("mShowHiddenPawn", "Function TribesGame.TrCamera_Spectator.ShowHiddenPawn")()); }
			ScriptFunction SetFOV() { mixin(MGF!("mSetFOV", "Function TribesGame.TrCamera_Spectator.SetFOV")()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrFlagBase m_HiddenFlag() { mixin(MGPC!(TrFlagBase, 1124)()); }
			TrPawn m_HiddenViewTargetPawn() { mixin(MGPC!(TrPawn, 1120)()); }
			float m_fMaxFixedViewCamDistance() { mixin(MGPC!(float, 1112)()); }
			float m_MinCamDistance() { mixin(MGPC!(float, 1108)()); }
			float m_MaxCamDistance() { mixin(MGPC!(float, 1104)()); }
			float m_fMaxSpeed() { mixin(MGPC!(float, 1100)()); }
			float m_fPawnZOffset() { mixin(MGPC!(float, 1096)()); }
			float m_fCameraDistanceInterpSpeed() { mixin(MGPC!(float, 1092)()); }
			float m_fInterpedCameraDistance() { mixin(MGPC!(float, 1088)()); }
		}
		bool m_bViewFixed3p() { mixin(MGBPC!(1116, 0x80)()); }
		bool m_bViewFixed3p(bool val) { mixin(MSBPC!(1116, 0x80)()); }
		bool m_bViewTargetEyes() { mixin(MGBPC!(1116, 0x40)()); }
		bool m_bViewTargetEyes(bool val) { mixin(MSBPC!(1116, 0x40)()); }
		bool m_bFastestPlayer() { mixin(MGBPC!(1116, 0x20)()); }
		bool m_bFastestPlayer(bool val) { mixin(MSBPC!(1116, 0x20)()); }
		bool m_bViewVehicles() { mixin(MGBPC!(1116, 0x10)()); }
		bool m_bViewVehicles(bool val) { mixin(MSBPC!(1116, 0x10)()); }
		bool m_bViewFlags() { mixin(MGBPC!(1116, 0x8)()); }
		bool m_bViewFlags(bool val) { mixin(MSBPC!(1116, 0x8)()); }
		bool m_bViewFlagStands() { mixin(MGBPC!(1116, 0x4)()); }
		bool m_bViewFlagStands(bool val) { mixin(MSBPC!(1116, 0x4)()); }
		bool m_bViewGenerators() { mixin(MGBPC!(1116, 0x2)()); }
		bool m_bViewGenerators(bool val) { mixin(MSBPC!(1116, 0x2)()); }
		bool m_bViewCameraBookmarks() { mixin(MGBPC!(1116, 0x1)()); }
		bool m_bViewCameraBookmarks(bool val) { mixin(MSBPC!(1116, 0x1)()); }
	}
final:
	void InitializeFor(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeFor, params.ptr, cast(void*)0);
	}
	void UpdateCamera(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCamera, params.ptr, cast(void*)0);
	}
	void UpdateViewTarget(ref Camera.TViewTarget OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateViewTarget, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	void ShowHiddenPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHiddenPawn, cast(void*)0, cast(void*)0);
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
}

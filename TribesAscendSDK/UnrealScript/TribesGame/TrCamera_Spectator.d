module UnrealScript.TribesGame.TrCamera_Spectator;

import ScriptClasses;
import UnrealScript.Engine.Camera;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrFlagBase;

extern(C++) interface TrCamera_Spectator : Camera
{
	public @property final auto ref TrFlagBase m_HiddenFlag() { return *cast(TrFlagBase*)(cast(size_t)cast(void*)this + 1124); }
	public @property final auto ref TrPawn m_HiddenViewTargetPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1120); }
	public @property final bool m_bViewFixed3p() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x80) != 0; }
	public @property final bool m_bViewFixed3p(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x80; } return val; }
	public @property final bool m_bViewTargetEyes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x40) != 0; }
	public @property final bool m_bViewTargetEyes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x40; } return val; }
	public @property final bool m_bFastestPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x20) != 0; }
	public @property final bool m_bFastestPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x20; } return val; }
	public @property final bool m_bViewVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x10) != 0; }
	public @property final bool m_bViewVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x10; } return val; }
	public @property final bool m_bViewFlags() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x8) != 0; }
	public @property final bool m_bViewFlags(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x8; } return val; }
	public @property final bool m_bViewFlagStands() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x4) != 0; }
	public @property final bool m_bViewFlagStands(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x4; } return val; }
	public @property final bool m_bViewGenerators() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x2) != 0; }
	public @property final bool m_bViewGenerators(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x2; } return val; }
	public @property final bool m_bViewCameraBookmarks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1116) & 0x1) != 0; }
	public @property final bool m_bViewCameraBookmarks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1116) &= ~0x1; } return val; }
	public @property final auto ref float m_fMaxFixedViewCamDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref float m_MinCamDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1108); }
	public @property final auto ref float m_MaxCamDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref float m_fMaxSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref float m_fPawnZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref float m_fCameraDistanceInterpSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref float m_fInterpedCameraDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1088); }
	final void InitializeFor(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74255], params.ptr, cast(void*)0);
	}
	final void UpdateCamera(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74257], params.ptr, cast(void*)0);
	}
	final void UpdateViewTarget(Camera.TViewTarget* OutVT, float DeltaTime)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Camera.TViewTarget*)params.ptr = *OutVT;
		*cast(float*)&params[44] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74264], params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)params.ptr;
	}
	final void ShowHiddenPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74279], cast(void*)0, cast(void*)0);
	}
	final void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74280], params.ptr, cast(void*)0);
	}
}

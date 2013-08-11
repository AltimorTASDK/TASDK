module UnrealScript.TribesGame.TrPlayerStart;

import UnrealScript.UDKBase.UDKTeamPlayerStart;
import UnrealScript.TribesGame.TrCaHCapturePoint;

extern(C++) interface TrPlayerStart : UDKTeamPlayerStart
{
	public @property final auto ref TrCaHCapturePoint CaHCapturePoint() { return *cast(TrCaHCapturePoint*)(cast(size_t)cast(void*)this + 716); }
}

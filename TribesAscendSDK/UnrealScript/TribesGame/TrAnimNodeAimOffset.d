module UnrealScript.TribesGame.TrAnimNodeAimOffset;

import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrAnimNodeAimOffset : AnimNodeAimOffset
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.Vector2D m_TargetRandomAimLocation() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 388); }
			float m_fCurrentRandomAimPointsInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
			float m_fRandomAimPointsIntervalMax() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
			float m_fRandomAimPointsIntervalMin() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			float m_fRandomAimPointsInterpRate() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			UObject.Vector2D m_RandomAimPointsRangeY() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 364); }
			UObject.Vector2D m_RandomAimPointsRangeX() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 356); }
			float m_fTurnAroundBlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 348); }
			float m_fTurnAroundTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 344); }
			UObject.Vector2D m_v2dLastPostProcessedAimOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 336); }
			UObject.Vector2D m_v2dLastAimOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 328); }
			float m_fTurnInPlaceOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			TrDevice m_TrDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 320); }
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 316); }
		}
		bool m_bRandomAimPointsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 352) & 0x1) != 0; }
		bool m_bRandomAimPointsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 352) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 352) &= ~0x1; } return val; }
	}
}

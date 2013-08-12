module UnrealScript.Engine.AnimationCompressionAlgorithm_Automatic;

import ScriptClasses;
import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_Automatic : AnimationCompressionAlgorithm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimationCompressionAlgorithm_Automatic")); }
	private static __gshared AnimationCompressionAlgorithm_Automatic mDefaultProperties;
	@property final static AnimationCompressionAlgorithm_Automatic DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimationCompressionAlgorithm_Automatic)("AnimationCompressionAlgorithm_Automatic Engine.Default__AnimationCompressionAlgorithm_Automatic")); }
	@property final
	{
		@property final auto ref float MaxEndEffectorError() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		bool bRaiseMaxErrorToExisting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
		bool bRaiseMaxErrorToExisting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
		bool bAutoReplaceIfExistingErrorTooGreat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
		bool bAutoReplaceIfExistingErrorTooGreat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
		bool bRunCurrentDefaultCompressor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
		bool bRunCurrentDefaultCompressor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
		bool bTryIntervalKeyRemoval() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
		bool bTryIntervalKeyRemoval(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
		bool bTryLinearKeyRemovalCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
		bool bTryLinearKeyRemovalCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
		bool bTryPerTrackBitwiseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bTryPerTrackBitwiseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bTryFixedBitwiseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bTryFixedBitwiseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}

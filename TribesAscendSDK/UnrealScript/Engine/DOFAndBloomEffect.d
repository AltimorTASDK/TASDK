module UnrealScript.Engine.DOFAndBloomEffect;

import UnrealScript.Engine.DOFEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFAndBloomEffect : DOFEffect
{
	public @property final bool bEnableDepthOfFieldHQ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
	public @property final bool bEnableDepthOfFieldHQ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
	public @property final bool bEnableReferenceDOF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
	public @property final bool bEnableReferenceDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
	public @property final bool bEnableSeparateBloom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bEnableSeparateBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final auto ref float BlurBloomKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float SceneMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float BloomScreenBlendThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.Color BloomTint() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float BloomThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float BloomScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}

module UnrealScript.TribesGame.TrGameEngine;

import UnrealScript.PlatformCommon.TgGameEngine;

extern(C++) interface TrGameEngine : TgGameEngine
{
public extern(D):
	@property final auto ref float fBGMVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 1840); }
}

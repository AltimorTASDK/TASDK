module UnrealScript.GameFramework.DynamicSpriteComponent;

import ScriptClasses;
import UnrealScript.Engine.SpriteComponent;
import UnrealScript.Core.UObject;

extern(C++) interface DynamicSpriteComponent : SpriteComponent
{
	public @property final auto ref int LoopCount() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref Vector LocationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref UObject.InterpCurveVector2D AnimatedPosition() { return *cast(UObject.InterpCurveVector2D*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref UObject.InterpCurveLinearColor AnimatedColor() { return *cast(UObject.InterpCurveLinearColor*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref UObject.InterpCurveFloat AnimatedScale() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 516); }
}

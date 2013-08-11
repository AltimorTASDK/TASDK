module UnrealScript.GameFramework.DynamicSpriteComponent;

import ScriptClasses;
import UnrealScript.Engine.SpriteComponent;
import UnrealScript.Core.UObject;

extern(C++) interface DynamicSpriteComponent : SpriteComponent
{
public extern(D):
	@property final auto ref
	{
		int LoopCount() { return *cast(int*)(cast(size_t)cast(void*)this + 576); }
		Vector LocationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 564); }
		UObject.InterpCurveVector2D AnimatedPosition() { return *cast(UObject.InterpCurveVector2D*)(cast(size_t)cast(void*)this + 548); }
		UObject.InterpCurveLinearColor AnimatedColor() { return *cast(UObject.InterpCurveLinearColor*)(cast(size_t)cast(void*)this + 532); }
		UObject.InterpCurveFloat AnimatedScale() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 516); }
	}
}

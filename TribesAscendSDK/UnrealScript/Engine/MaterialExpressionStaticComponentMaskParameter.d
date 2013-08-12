module UnrealScript.Engine.MaterialExpressionStaticComponentMaskParameter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticComponentMaskParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionStaticComponentMaskParameter")); }
	@property final
	{
		auto ref
		{
			UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 164); }
			// WARNING: Property 'Input' has the same name as a defined type!
		}
		bool DefaultA() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
		bool DefaultA(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
		bool DefaultB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
		bool DefaultB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
		bool DefaultG() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
		bool DefaultG(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
		bool DefaultR() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool DefaultR(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
}

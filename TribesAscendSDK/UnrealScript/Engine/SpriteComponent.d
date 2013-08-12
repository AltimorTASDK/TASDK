module UnrealScript.Engine.SpriteComponent;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SpriteComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpriteComponent")); }
	private static __gshared SpriteComponent mDefaultProperties;
	@property final static SpriteComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SpriteComponent)("SpriteComponent Engine.Default__SpriteComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSprite;
			ScriptFunction mSetUV;
			ScriptFunction mSetSpriteAndUV;
		}
		public @property static final
		{
			ScriptFunction SetSprite() { return mSetSprite ? mSetSprite : (mSetSprite = ScriptObject.Find!(ScriptFunction)("Function Engine.SpriteComponent.SetSprite")); }
			ScriptFunction SetUV() { return mSetUV ? mSetUV : (mSetUV = ScriptObject.Find!(ScriptFunction)("Function Engine.SpriteComponent.SetUV")); }
			ScriptFunction SetSpriteAndUV() { return mSetSpriteAndUV ? mSetSpriteAndUV : (mSetSpriteAndUV = ScriptObject.Find!(ScriptFunction)("Function Engine.SpriteComponent.SetSpriteAndUV")); }
		}
	}
	@property final
	{
		auto ref
		{
			float VL() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float V() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float UL() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float U() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float ScreenSize() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Texture2D Sprite() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bIsScreenSizeScaled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bIsScreenSizeScaled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	}
final:
	void SetSprite(Texture2D NewSprite)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSprite, params.ptr, cast(void*)0);
	}
	void SetUV(int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = NewU;
		*cast(int*)&params[4] = NewUL;
		*cast(int*)&params[8] = NewV;
		*cast(int*)&params[12] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUV, params.ptr, cast(void*)0);
	}
	void SetSpriteAndUV(Texture2D NewSprite, int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		*cast(int*)&params[4] = NewU;
		*cast(int*)&params[8] = NewUL;
		*cast(int*)&params[12] = NewV;
		*cast(int*)&params[16] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpriteAndUV, params.ptr, cast(void*)0);
	}
}

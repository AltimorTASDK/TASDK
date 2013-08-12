module UnrealScript.GameFramework.MobileMenuButton;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobilePlayerInput;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuButton : MobileMenuObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuButton")); }
	private static __gshared MobileMenuButton mDefaultProperties;
	@property final static MobileMenuButton DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileMenuButton)("MobileMenuButton GameFramework.Default__MobileMenuButton")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitMenuObject;
			ScriptFunction mRenderObject;
			ScriptFunction mRenderCaption;
		}
		public @property static final
		{
			ScriptFunction InitMenuObject() { return mInitMenuObject ? mInitMenuObject : (mInitMenuObject = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuButton.InitMenuObject")); }
			ScriptFunction RenderObject() { return mRenderObject ? mRenderObject : (mRenderObject = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuButton.RenderObject")); }
			ScriptFunction RenderCaption() { return mRenderCaption ? mRenderCaption : (mRenderCaption = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuButton.RenderCaption")); }
		}
	}
	@property final auto ref
	{
		UObject.LinearColor CaptionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 208); }
		ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		UObject.LinearColor ImageColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 180); }
		MobileMenuObject.UVCoords ImagesUVs() { return *cast(MobileMenuObject.UVCoords*)(cast(size_t)cast(void*)this + 140); }
		Texture2D Images() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 132); }
	}
final:
	void InitMenuObject(MobilePlayerInput pPlayerInput, MobileMenuScene pScene, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = pPlayerInput;
		*cast(MobileMenuScene*)&params[4] = pScene;
		*cast(int*)&params[8] = ScreenWidth;
		*cast(int*)&params[12] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMenuObject, params.ptr, cast(void*)0);
	}
	void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
	void RenderCaption(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderCaption, params.ptr, cast(void*)0);
	}
}

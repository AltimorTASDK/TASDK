module UnrealScript.GameFramework.MobileMenuImage;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuImage : MobileMenuObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuImage")); }
	private static __gshared MobileMenuImage mDefaultProperties;
	@property final static MobileMenuImage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileMenuImage)("MobileMenuImage GameFramework.Default__MobileMenuImage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRenderObject;
		public @property static final ScriptFunction RenderObject() { return mRenderObject ? mRenderObject : (mRenderObject = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuImage.RenderObject")); }
	}
	enum MenuImageDrawStyle : ubyte
	{
		IDS_Normal = 0,
		IDS_Stretched = 1,
		IDS_Tile = 2,
		IDS_MAX = 3,
	}
	@property final auto ref
	{
		UObject.LinearColor ImageColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 160); }
		MobileMenuObject.UVCoords ImageUVs() { return *cast(MobileMenuObject.UVCoords*)(cast(size_t)cast(void*)this + 140); }
		MobileMenuImage.MenuImageDrawStyle ImageDrawStyle() { return *cast(MobileMenuImage.MenuImageDrawStyle*)(cast(size_t)cast(void*)this + 136); }
		Texture2D Image() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 132); }
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
}

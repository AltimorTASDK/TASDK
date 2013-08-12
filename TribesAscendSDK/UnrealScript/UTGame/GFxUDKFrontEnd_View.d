module UnrealScript.UTGame.GFxUDKFrontEnd_View;

import ScriptClasses;
import UnrealScript.UTGame.GFxUIView;
import UnrealScript.UTGame.GFxUDKFrontEnd;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_View : GFxUIView
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_View")); }
	private static __gshared GFxUDKFrontEnd_View mDefaultProperties;
	@property final static GFxUDKFrontEnd_View DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_View)("GFxUDKFrontEnd_View UTGame.Default__GFxUDKFrontEnd_View")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mOnViewActivated;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mPlayOpenAnimation;
			ScriptFunction mPlayCloseAnimation;
			ScriptFunction mSelect_Back;
			ScriptFunction mMoveBackImpl;
			ScriptFunction mOnEscapeKeyPress;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.OnTopMostView")); }
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.OnViewActivated")); }
			ScriptFunction OnViewClosed() { return mOnViewClosed ? mOnViewClosed : (mOnViewClosed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.DisableSubComponents")); }
			ScriptFunction PlayOpenAnimation() { return mPlayOpenAnimation ? mPlayOpenAnimation : (mPlayOpenAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.PlayOpenAnimation")); }
			ScriptFunction PlayCloseAnimation() { return mPlayCloseAnimation ? mPlayCloseAnimation : (mPlayCloseAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.PlayCloseAnimation")); }
			ScriptFunction Select_Back() { return mSelect_Back ? mSelect_Back : (mSelect_Back = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.Select_Back")); }
			ScriptFunction MoveBackImpl() { return mMoveBackImpl ? mMoveBackImpl : (mMoveBackImpl = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.MoveBackImpl")); }
			ScriptFunction OnEscapeKeyPress() { return mOnEscapeKeyPress ? mOnEscapeKeyPress : (mOnEscapeKeyPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.OnEscapeKeyPress")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_View.WidgetInitialized")); }
		}
	}
	static struct Constants
	{
		enum FakePlayerIndex = 0;
	}
	@property final auto ref
	{
		ScriptName ViewName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
		GFxUDKFrontEnd MenuManager() { return *cast(GFxUDKFrontEnd*)(cast(size_t)cast(void*)this + 124); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOpenAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void Select_Back(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_Back, params.ptr, cast(void*)0);
	}
	void MoveBackImpl()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveBackImpl, cast(void*)0, cast(void*)0);
	}
	void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEscapeKeyPress, cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}

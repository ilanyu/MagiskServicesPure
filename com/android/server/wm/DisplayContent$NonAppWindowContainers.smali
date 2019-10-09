.class Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonAppWindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 3956
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 3957
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 3933
    new-instance p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;-><init>(Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    .line 3940
    sget-object p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    .line 3953
    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 3954
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 3958
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    .line 3959
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .registers 7
    .param p1, "token1"    # Lcom/android/server/wm/WindowToken;
    .param p2, "token2"    # Lcom/android/server/wm/WindowToken;

    .line 3937
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 3935
    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v3, p2, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 3937
    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 3938
    const/4 v0, -0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    .line 3935
    :goto_1d
    return v0
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 3941
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_c

    goto :goto_1d

    .line 3944
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3945
    .local v0, "req":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1a

    goto :goto_1c

    .line 3949
    :cond_1a
    const/4 v1, 0x1

    return v1

    .line 3947
    :cond_1c
    :goto_1c
    return v1

    .line 3942
    .end local v0    # "req":I
    :cond_1d
    :goto_1d
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 3962
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 3963
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 4007
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 4002
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()I
    .registers 7

    .line 3967
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3969
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3971
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_32

    .line 3972
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3973
    .local v4, "req":I
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3974
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # setter for: Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I
    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayContent;->access$502(Lcom/android/server/wm/DisplayContent;I)I

    .line 3975
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v5, :cond_2b

    .line 3977
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # setter for: Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I
    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 3978
    return v2

    .line 3983
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # setter for: Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I
    invoke-static {v2, v4}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    move-result v2

    return v2

    .line 3986
    .end local v4    # "req":I
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # setter for: Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I
    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 3990
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3991
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 3992
    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 3993
    .local v3, "isUnoccluding":Z
    :goto_50
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-nez v4, :cond_5a

    if-eqz v3, :cond_59

    goto :goto_5a

    .line 3997
    :cond_59
    return v2

    .line 3994
    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    return v2
.end method

.method prepareSurfaces()V
    .registers 4

    .line 4012
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 4013
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->prepareSurfaces()V

    .line 4014
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getBounds(Landroid/graphics/Rect;)V

    .line 4016
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4017
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->scheduleAnimation()V

    .line 4019
    :cond_1e
    return-void
.end method

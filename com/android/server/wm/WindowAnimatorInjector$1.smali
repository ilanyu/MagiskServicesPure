.class Lcom/android/server/wm/WindowAnimatorInjector$1;
.super Ljava/lang/Object;
.source "WindowAnimatorInjector.java"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimatorInjector;->updateLockDeviceWindowLocked(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ToBooleanFunction<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 22
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_8

    goto :goto_4d

    .line 24
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 25
    .local v1, "type":I
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 27
    .local v2, "extraFlags":I
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_18

    .line 28
    # setter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;
    invoke-static {p1}, Lcom/android/server/wm/WindowAnimatorInjector;->access$002(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    goto :goto_4c

    .line 29
    :cond_18
    const/4 v3, 0x1

    if-lt v1, v3, :cond_4c

    const/16 v4, 0x7d0

    if-ge v1, v4, :cond_4c

    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_4c

    .line 32
    # getter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;
    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->access$100()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 33
    # getter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;
    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->access$100()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_42

    # getter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;
    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->access$100()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_49

    .line 35
    :cond_42
    # getter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpLockWindow:Lcom/android/server/wm/WindowState;
    invoke-static {}, Lcom/android/server/wm/WindowAnimatorInjector;->access$000()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 36
    return v3

    .line 34
    :cond_49
    :goto_49
    # setter for: Lcom/android/server/wm/WindowAnimatorInjector;->sTmpFirstAppWindow:Lcom/android/server/wm/WindowState;
    invoke-static {p1}, Lcom/android/server/wm/WindowAnimatorInjector;->access$102(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    .line 39
    :cond_4c
    :goto_4c
    return v0

    .line 22
    .end local v1    # "type":I
    .end local v2    # "extraFlags":I
    :cond_4d
    :goto_4d
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    .line 19
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimatorInjector$1;->apply(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method

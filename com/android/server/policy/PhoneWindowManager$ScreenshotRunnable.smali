.class Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotType:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 1885
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1886
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .line 1885
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1894
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1895
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1896
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2f

    move v3, v4

    nop

    :cond_2f
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1894
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;)V

    .line 1897
    return-void
.end method

.method public setScreenshotType(I)V
    .registers 2
    .param p1, "screenshotType"    # I

    .line 1889
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    .line 1890
    return-void
.end method

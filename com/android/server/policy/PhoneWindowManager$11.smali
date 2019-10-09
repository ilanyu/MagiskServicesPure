.class Lcom/android/server/policy/PhoneWindowManager$11;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 2435
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowingChanged()V
    .registers 2

    .line 2443
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onKeyguardShowingAndNotOccludedChanged()V

    .line 2444
    return-void
.end method

.method public onTrustedChanged()V
    .registers 2

    .line 2438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyKeyguardTrustedChanged()V

    .line 2439
    return-void
.end method

.method public unblockScreenOn()V
    .registers 8

    .line 2451
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unblockScreenOn mScreenOnFully = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v0, 0x0

    .line 2453
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2454
    :try_start_21
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_33

    .line 2455
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-object v0, v2

    .line 2456
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-wide v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    goto :goto_39

    .line 2458
    :cond_33
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$11;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v5, -0x1

    iput-wide v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    .line 2460
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_40

    .line 2462
    if-eqz v0, :cond_3f

    .line 2463
    invoke-interface {v0, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn(J)V

    .line 2465
    :cond_3f
    return-void

    .line 2460
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

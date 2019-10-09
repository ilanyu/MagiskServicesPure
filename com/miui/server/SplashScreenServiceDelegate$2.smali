.class Lcom/miui/server/SplashScreenServiceDelegate$2;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 163
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private asyncSetSplashPackageCheckListener()V
    .registers 3

    .line 190
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate$2$1;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 166
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v1, "SplashScreenService connected!"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {p2}, Lcom/miui/server/ISplashScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;

    move-result-object v1

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$402(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    .line 168
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$502(Lcom/miui/server/SplashScreenServiceDelegate;J)J

    .line 169
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$602(Lcom/miui/server/SplashScreenServiceDelegate;I)I

    .line 170
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$700(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :try_start_29
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$400(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/server/ISplashScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$800(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_3d

    .line 175
    goto :goto_46

    .line 173
    :catch_3d
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "linkToDeath exception"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;->asyncSetSplashPackageCheckListener()V

    .line 178
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 182
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v1, "SplashScreenService disconnected!"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$402(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;

    .line 184
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1000(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 185
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1000(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1100(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    :cond_24
    return-void
.end method

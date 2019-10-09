.class Lcom/miui/server/SplashScreenServiceDelegate$5;
.super Landroid/os/Handler;
.source "SplashScreenServiceDelegate.java"


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
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 385
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$5;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$5;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1700(Lcom/miui/server/SplashScreenServiceDelegate;)V

    .line 394
    :goto_b
    return-void
.end method

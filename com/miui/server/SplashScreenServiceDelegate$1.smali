.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .line 76
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 80
    if-nez p2, :cond_3

    .line 81
    return-void

    .line 84
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 86
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v3, "Boot completed, delay to bind SplashScreenService"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 87
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V
    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$100(Lcom/miui/server/SplashScreenServiceDelegate;)V

    goto :goto_45

    .line 88
    :cond_1d
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 89
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v3, "Debug On"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 90
    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z
    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$202(Z)Z

    goto :goto_45

    .line 91
    :cond_31
    const-string/jumbo v1, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 92
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v3, "Debug Off"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V
    invoke-static {v1, v3, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$000(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V

    .line 93
    const/4 v1, 0x0

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z
    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$202(Z)Z

    .line 95
    :cond_45
    :goto_45
    return-void
.end method

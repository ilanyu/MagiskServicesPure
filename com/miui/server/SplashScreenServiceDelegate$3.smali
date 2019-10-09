.class Lcom/miui/server/SplashScreenServiceDelegate$3;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 238
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v1, "SplashScreenService binderDied!"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1300(Lcom/miui/server/SplashScreenServiceDelegate;)V

    .line 243
    return-void
.end method

.class Lcom/miui/server/SplashScreenServiceDelegate$2$1;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SplashScreenServiceDelegate$2;->asyncSetSplashPackageCheckListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/miui/server/SplashScreenServiceDelegate$2;

    .line 190
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v0, v0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$400(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;

    move-result-object v0

    .line 194
    .local v0, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v0, :cond_29

    .line 196
    :try_start_a
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v2, "Set splash package check listener"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;
    invoke-static {v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1200(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/server/ISplashScreenService;->setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    .line 200
    goto :goto_29

    .line 198
    :catch_1f
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2$1;->this$1:Lcom/miui/server/SplashScreenServiceDelegate$2;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string v3, "asyncSetSplashPackageCheckListener exception"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    return-void
.end method

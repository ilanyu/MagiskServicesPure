.class Lcom/miui/server/SplashScreenServiceDelegate$4;
.super Lcom/miui/server/ISplashPackageCheckListener$Stub;
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

    .line 246
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Lcom/miui/server/ISplashPackageCheckListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 5
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z
    invoke-static {v0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1500(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 269
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Valid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    invoke-static {v0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1600(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V

    goto :goto_3a

    .line 272
    :cond_24
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 276
    :goto_3a
    goto :goto_44

    .line 274
    :catch_3b
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "updateSplashPackageCheckInfo exception"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_44
    return-void
.end method

.method public updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    .local p1, "splashPackageCheckInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v1, "updateSplashPackageCheckInfoList"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->access$300(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # getter for: Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$1400(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    if-eqz p1, :cond_2f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2f

    .line 257
    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/SplashPackageCheckInfo;

    .line 258
    .local v1, "info":Lcom/miui/server/SplashPackageCheckInfo;
    invoke-virtual {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$4;->updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_30

    .line 259
    .end local v1    # "info":Lcom/miui/server/SplashPackageCheckInfo;
    goto :goto_1e

    .line 262
    :cond_2e
    goto :goto_39

    .line 254
    :cond_2f
    :goto_2f
    return-void

    .line 260
    :catch_30
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$4;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const-string/jumbo v2, "updateSplashPackageCheckInfoList exception"

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$900(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39
    return-void
.end method

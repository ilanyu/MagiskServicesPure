.class Lcom/android/server/lights/MiuiLightsService$2;
.super Lmiui/lights/ILightsManager$Stub;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 436
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Lmiui/lights/ILightsManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$setColorfulLight$0(Lcom/android/server/lights/MiuiLightsService$2;Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "styleType"    # I

    .line 442
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mLastLightStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLightStyleLoader:Lcom/android/server/lights/LightStyleLoader;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2700(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/LightStyleLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/lights/LightStyleLoader;->getLightStyle(I)Ljava/util/List;

    move-result-object v0

    .line 444
    .local v0, "lightStyle":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/lights/LightState;>;"
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 445
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mColorfulLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$1300(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2, v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setColorfulLightLocked(Ljava/lang/String;IILjava/util/List;)V

    .line 446
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_3e
    move-exception v2

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_3e

    throw v2
.end method


# virtual methods
.method public setColorfulLight(Ljava/lang/String;II)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "styleType"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->checkCallerVerify(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/lights/MiuiLightsService;->access$2500(Lcom/android/server/lights/MiuiLightsService;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$2;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;-><init>(Lcom/android/server/lights/MiuiLightsService$2;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

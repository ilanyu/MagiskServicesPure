.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1191
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3
    .param p1, "props"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 1194
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 1195
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"    # Ljava/lang/String;

    .line 1199
    if-nez p2, :cond_3

    return-void

    .line 1201
    :cond_3
    const-string v0, "HealthUnregisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Ljava/lang/String;)V

    .line 1203
    if-eqz p1, :cond_51

    .line 1204
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1205
    .local v0, "r":I
    if-eqz v0, :cond_51

    .line 1206
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_2f
    .catchall {:try_start_a .. :try_end_2c} :catchall_2d

    .end local v0    # "r":I
    goto :goto_51

    .line 1214
    :catchall_2d
    move-exception v0

    goto :goto_4d

    .line 1210
    :catch_2f
    move-exception v0

    .line 1211
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_30
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1211
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_2d

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_51

    .line 1214
    :goto_4d
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$1900()V

    throw v0

    :cond_51
    :goto_51
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$1900()V

    .line 1215
    nop

    .line 1217
    const-string v0, "HealthRegisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Ljava/lang/String;)V

    .line 1219
    :try_start_5a
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1220
    .local v0, "r":I
    if-eqz v0, :cond_80

    .line 1221
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_7c} :catch_89
    .catchall {:try_start_5a .. :try_end_7c} :catchall_87

    .line 1231
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$1900()V

    .line 1222
    return-void

    .line 1226
    :cond_80
    :try_start_80
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_83} :catch_89
    .catchall {:try_start_80 .. :try_end_83} :catchall_87

    .line 1231
    .end local v0    # "r":I
    :goto_83
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$1900()V

    .line 1232
    goto :goto_a7

    .line 1231
    :catchall_87
    move-exception v0

    goto :goto_a8

    .line 1227
    :catch_89
    move-exception v0

    .line 1228
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_8a
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1228
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_87

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_83

    .line 1233
    :goto_a7
    return-void

    .line 1231
    :goto_a8
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$1900()V

    throw v0
.end method

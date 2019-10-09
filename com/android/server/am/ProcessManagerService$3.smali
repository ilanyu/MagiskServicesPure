.class Lcom/android/server/am/ProcessManagerService$3;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->reportCameraBoost(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$killNum:I

.field final synthetic val$nowFree:J

.field final synthetic val$time:J

.field final synthetic val$willFree:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;JIIJ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1309
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-wide p2, p0, Lcom/android/server/am/ProcessManagerService$3;->val$nowFree:J

    iput p4, p0, Lcom/android/server/am/ProcessManagerService$3;->val$killNum:I

    iput p5, p0, Lcom/android/server/am/ProcessManagerService$3;->val$willFree:I

    iput-wide p6, p0, Lcom/android/server/am/ProcessManagerService$3;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1314
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "nowFree"

    iget-wide v2, p0, Lcom/android/server/am/ProcessManagerService$3;->val$nowFree:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1315
    const-string/jumbo v1, "killNum"

    iget v2, p0, Lcom/android/server/am/ProcessManagerService$3;->val$killNum:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1316
    const-string/jumbo v1, "willFree"

    iget v2, p0, Lcom/android/server/am/ProcessManagerService$3;->val$willFree:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    const-string/jumbo v1, "totalMem"

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1318
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/android/server/am/ProcessManagerService$3;->val$time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1319
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ProcessManagerService;->access$700(Lcom/android/server/am/ProcessManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_boost"

    .line 1320
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1319
    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_46

    .line 1323
    goto :goto_4e

    .line 1321
    :catch_46
    move-exception v1

    .line 1322
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ProcessManager"

    const-string v3, "error in reportCameraBoost to settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1324
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4e
    return-void
.end method

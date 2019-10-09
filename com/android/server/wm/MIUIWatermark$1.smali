.class Lcom/android/server/wm/MIUIWatermark$1;
.super Ljava/lang/Thread;
.source "MIUIWatermark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MIUIWatermark;->getImeiInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MIUIWatermark;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MIUIWatermark;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MIUIWatermark;

    .line 250
    iput-object p1, p0, Lcom/android/server/wm/MIUIWatermark$1;->this$0:Lcom/android/server/wm/MIUIWatermark;

    iput-object p2, p0, Lcom/android/server/wm/MIUIWatermark$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 254
    const/16 v0, 0xa

    .line 255
    .local v0, "time":I
    :goto_2
    const/4 v1, 0x0

    if-lez v0, :cond_28

    .line 256
    :try_start_5
    iget-object v2, p0, Lcom/android/server/wm/MIUIWatermark$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/wm/MIUIWatermark;->getImeiID(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wm/MIUIWatermark;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "imei":Ljava/lang/String;
    if-nez v2, :cond_15

    .line 258
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Lcom/android/server/wm/MIUIWatermark$1;->sleep(J)V

    .line 263
    add-int/lit8 v0, v0, -0x1

    .line 264
    .end local v2    # "imei":Ljava/lang/String;
    goto :goto_2

    .line 260
    .restart local v2    # "imei":Ljava/lang/String;
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/MIUIWatermark$1;->this$0:Lcom/android/server/wm/MIUIWatermark;

    # invokes: Lcom/android/server/wm/MIUIWatermark;->setImei(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/wm/MIUIWatermark;->access$100(Lcom/android/server/wm/MIUIWatermark;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1a} :catch_1d
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    .line 261
    goto :goto_28

    .line 268
    .end local v0    # "time":I
    .end local v2    # "imei":Ljava/lang/String;
    :catchall_1b
    move-exception v0

    goto :goto_22

    .line 265
    :catch_1d
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_28

    .line 268
    :goto_22
    iget-object v2, p0, Lcom/android/server/wm/MIUIWatermark$1;->this$0:Lcom/android/server/wm/MIUIWatermark;

    # setter for: Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z
    invoke-static {v2, v1}, Lcom/android/server/wm/MIUIWatermark;->access$202(Lcom/android/server/wm/MIUIWatermark;Z)Z

    throw v0

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/wm/MIUIWatermark$1;->this$0:Lcom/android/server/wm/MIUIWatermark;

    # setter for: Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/MIUIWatermark;->access$202(Lcom/android/server/wm/MIUIWatermark;Z)Z

    .line 269
    nop

    .line 270
    return-void
.end method

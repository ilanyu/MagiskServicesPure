.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_APPLY_CONFIG:I = 0x4

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1316
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1317
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1318
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/notification/ZenModeHelper$1;

    .line 1297
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;

    .line 1297
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 1297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H;->postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper$H;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper$H;

    .line 1297
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method private postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .line 1331
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 1333
    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .registers 2

    .line 1321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1322
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    .line 1323
    return-void
.end method

.method private postMetricsTimer()V
    .registers 4

    .line 1326
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    .line 1327
    const-wide/32 v1, 0x1499700

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1337
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    packed-switch v0, :pswitch_data_2a

    goto :goto_28

    .line 1342
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$1100(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object v0

    # invokes: Lcom/android/server/notification/ZenModeHelper$Metrics;->emit()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->access$1200(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    .line 1343
    goto :goto_28

    .line 1339
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)V

    .line 1340
    goto :goto_28

    .line 1345
    :cond_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    .line 1346
    .local v0, "applyConfigData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    # invokes: Lcom/android/server/notification/ZenModeHelper;->applyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->access$1300(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    .line 1349
    .end local v0    # "applyConfigData":Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

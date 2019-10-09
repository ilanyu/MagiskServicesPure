.class final Lcom/android/server/am/ActivityMetricsLogger$H;
.super Landroid/os/Handler;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$H;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_16

    .line 115
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 116
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger$H;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    # invokes: Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/am/ActivityMetricsLogger;->access$000(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 119
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_16
    return-void
.end method

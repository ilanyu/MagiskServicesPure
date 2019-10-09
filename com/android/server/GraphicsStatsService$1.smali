.class Lcom/android/server/GraphicsStatsService$1;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/GraphicsStatsService;

    .line 110
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    goto :goto_16

    .line 118
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    # invokes: Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V
    invoke-static {v0}, Lcom/android/server/GraphicsStatsService;->access$100(Lcom/android/server/GraphicsStatsService;)V

    goto :goto_16

    .line 115
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$1;->this$0:Lcom/android/server/GraphicsStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    # invokes: Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    invoke-static {v0, v1}, Lcom/android/server/GraphicsStatsService;->access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    .line 116
    nop

    .line 121
    :goto_16
    const/4 v0, 0x1

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

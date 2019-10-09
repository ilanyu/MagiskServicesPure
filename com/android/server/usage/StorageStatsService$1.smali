.class Lcom/android/server/usage/StorageStatsService$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/StorageStatsService;

    .line 118
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 121
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    packed-switch v0, :pswitch_data_10

    goto :goto_e

    .line 124
    :pswitch_6
    const/4 v0, 0x2

    if-ne p3, v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    # invokes: Lcom/android/server/usage/StorageStatsService;->invalidateMounts()V
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->access$000(Lcom/android/server/usage/StorageStatsService;)V

    .line 128
    :cond_e
    :goto_e
    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

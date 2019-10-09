.class Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 140
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 146
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_68

    goto :goto_41

    :sswitch_10
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x0

    goto :goto_41

    :sswitch_1a
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x4

    goto :goto_41

    :sswitch_24
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2e
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x3

    goto :goto_41

    :sswitch_38
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x1

    :cond_41
    :goto_41
    packed-switch v1, :pswitch_data_7e

    goto :goto_66

    .line 152
    :pswitch_45
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_4c
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_56

    monitor-exit v1

    return-void

    .line 155
    :cond_56
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    # getter for: Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I
    invoke-static {v3}, Lcom/android/server/camera/CameraServiceProxy;->access$200(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result v3

    # invokes: Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V
    invoke-static {v2, v3}, Lcom/android/server/camera/CameraServiceProxy;->access$300(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 156
    monitor-exit v1

    .line 157
    goto :goto_66

    .line 156
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_63

    throw v2

    .line 162
    :goto_66
    return-void

    nop

    :sswitch_data_68
    .sparse-switch
        -0x7ad942ef -> :sswitch_38
        -0x16fbb1bb -> :sswitch_2e
        -0xc02da2e -> :sswitch_24
        0x3eac4465 -> :sswitch_1a
        0x42dd01f1 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

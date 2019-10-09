.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/trust/TrustManagerService;

    .line 1079
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1082
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_b4

    :pswitch_8
    goto/16 :goto_b3

    .line 1130
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;I)V

    goto/16 :goto_b3

    .line 1093
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;II)V

    .line 1094
    goto/16 :goto_b3

    .line 1113
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;IZ)V

    .line 1114
    goto/16 :goto_b3

    .line 1117
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1118
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1119
    .local v2, "usuallyManaged":Landroid/util/SparseBooleanArray;
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_62

    .line 1121
    nop

    .local v1, "i":I
    :goto_3a
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 1122
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 1123
    .local v1, "userId":I
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 1124
    .local v3, "value":Z
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_5e

    .line 1125
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 1121
    .end local v1    # "userId":I
    .end local v3    # "value":Z
    :cond_5e
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_3a

    .line 1128
    .end local v1    # "i":I
    :cond_61
    goto :goto_b3

    .line 1119
    .end local v2    # "usuallyManaged":Landroid/util/SparseBooleanArray;
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    .line 1109
    :pswitch_65
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$802(Lcom/android/server/trust/TrustManagerService;I)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1111
    goto :goto_b3

    .line 1106
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1107
    goto :goto_b3

    .line 1101
    :pswitch_7a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I
    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$800(Lcom/android/server/trust/TrustManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1102
    goto :goto_b3

    .line 1096
    :pswitch_86
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v0, v2}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1099
    goto :goto_b3

    .line 1090
    :pswitch_91
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_99

    move v1, v3

    nop

    :cond_99
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$1900(Lcom/android/server/trust/TrustManagerService;ZI)V

    .line 1091
    goto :goto_b3

    .line 1087
    :pswitch_9f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    # invokes: Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1088
    goto :goto_b3

    .line 1084
    :pswitch_a9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/ITrustListener;

    # invokes: Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1085
    nop

    .line 1133
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_9f
        :pswitch_91
        :pswitch_86
        :pswitch_8
        :pswitch_7a
        :pswitch_72
        :pswitch_72
        :pswitch_65
        :pswitch_27
        :pswitch_72
        :pswitch_1e
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

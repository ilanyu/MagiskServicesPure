.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .line 224
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 238
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    .local v0, "newDefaultPhoneId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, "newDefaultSubId":I
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # getter for: Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 250
    :try_start_17
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # getter for: Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 251
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_39

    .line 252
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # invokes: Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    invoke-static {v5, v4, v0}, Lcom/android/server/TelephonyRegistry;->access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 254
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_39
    goto :goto_21

    .line 255
    :cond_3a
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # invokes: Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$300(Lcom/android/server/TelephonyRegistry;)V

    .line 256
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_4b

    .line 257
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # setter for: Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I
    invoke-static {v2, v1}, Lcom/android/server/TelephonyRegistry;->access$402(Lcom/android/server/TelephonyRegistry;I)I

    .line 258
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    # setter for: Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I
    invoke-static {v2, v0}, Lcom/android/server/TelephonyRegistry;->access$502(Lcom/android/server/TelephonyRegistry;I)I

    .end local v0    # "newDefaultPhoneId":I
    .end local v1    # "newDefaultSubId":I
    goto :goto_6a

    .line 256
    .restart local v0    # "newDefaultPhoneId":I
    .restart local v1    # "newDefaultSubId":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 230
    .end local v0    # "newDefaultPhoneId":I
    .end local v1    # "newDefaultSubId":I
    :pswitch_4e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 231
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .local v1, "sub":I
    :goto_57
    if-ge v1, v0, :cond_69

    .line 232
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    .line 233
    # getter for: Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;
    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;

    move-result-object v3

    aget-object v3, v3, v1

    .line 232
    invoke-virtual {v2, v1, v3}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 235
    .end local v1    # "sub":I
    :cond_69
    nop

    .line 261
    .end local v0    # "numPhones":I
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
.super Landroid/os/Handler;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_DESTROYED:I = 0x5

.field static final ACTIVITY_IDLE:I = 0x1

.field static final ACTIVITY_PAUSED:I = 0x3

.field static final ACTIVITY_RESUMED:I = 0x2

.field static final ACTIVITY_STOPPED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 766
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .line 767
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 768
    return-void
.end method

.method private canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 13
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 832
    const/4 v0, 0x0

    if-eqz p1, :cond_a8

    if-eqz p2, :cond_a8

    .line 833
    const-string/jumbo v1, "packages"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 834
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "activities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 835
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v0

    .line 836
    .local v4, "needFilterPackage":Z
    :goto_1e
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    move v5, v3

    goto :goto_29

    :cond_28
    move v5, v0

    .line 837
    .local v5, "needFilterActivity":Z
    :goto_29
    if-nez v4, :cond_2e

    if-nez v5, :cond_2e

    .line 838
    return v3

    .line 840
    :cond_2e
    if-eqz v4, :cond_57

    .line 841
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 842
    return v3

    .line 844
    :cond_39
    const-string v6, "MiuiLog-ActivityObserver:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not matched"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 847
    :cond_57
    const-string v6, "MiuiLog-ActivityObserver:"

    const-string v7, "Don\'t need to check package"

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_5e
    if-eqz v5, :cond_a0

    .line 850
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 851
    .local v6, "realActivity":Landroid/content/ComponentName;
    if-eqz v6, :cond_98

    .line 852
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_68
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 853
    .local v8, "activity":Landroid/content/ComponentName;
    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 854
    return v3

    .line 856
    .end local v8    # "activity":Landroid/content/ComponentName;
    :cond_7b
    goto :goto_68

    .line 857
    :cond_7c
    const-string v3, "MiuiLog-ActivityObserver:"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not matched"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 860
    :cond_98
    const-string v3, "MiuiLog-ActivityObserver:"

    const-string v7, "The realActivity is null"

    invoke-static {v3, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :goto_9f
    goto :goto_a7

    .line 863
    :cond_a0
    const-string v3, "MiuiLog-ActivityObserver:"

    const-string v6, "Don\'t need to check activity"

    invoke-static {v3, v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_a7
    return v0

    .line 869
    .end local v1    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v4    # "needFilterPackage":Z
    .end local v5    # "needFilterActivity":Z
    :cond_a8
    const-string v1, "MiuiLog-ActivityObserver:"

    const-string v2, "Record or intent is null"

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    return v0
.end method

.method private dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p3, "record"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$500(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;

    move-result-object v0

    .line 876
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 877
    packed-switch p1, :pswitch_data_34

    goto :goto_32

    .line 892
    :pswitch_f
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityDestroyed(Landroid/content/Intent;)V

    .line 893
    goto :goto_32

    .line 889
    :pswitch_13
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityStopped(Landroid/content/Intent;)V

    .line 890
    goto :goto_32

    .line 886
    :pswitch_17
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityPaused(Landroid/content/Intent;)V

    .line 887
    goto :goto_32

    .line 882
    :pswitch_1b
    const-string v1, "appBounds"

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 883
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityResumed(Landroid/content/Intent;)V

    .line 884
    goto :goto_32

    .line 879
    :pswitch_2e
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityIdle(Landroid/content/Intent;)V

    .line 880
    nop

    .line 898
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "code"    # I

    .line 771
    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 772
    packed-switch p1, :pswitch_data_1e

    goto :goto_19

    .line 777
    :pswitch_a
    const-string v0, "ACTIVITY_DESTROYED"

    return-object v0

    .line 776
    :pswitch_d
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 775
    :pswitch_10
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 774
    :pswitch_13
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    .line 773
    :pswitch_16
    const-string v0, "ACTIVITY_IDLE"

    return-object v0

    .line 780
    :cond_19
    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    .line 786
    .local v0, "what":I
    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a4

    .line 792
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_a4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_a4

    .line 793
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    monitor-enter v1

    .line 794
    :try_start_14
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 795
    .local v2, "i":I
    :goto_1e
    if-lez v2, :cond_96

    .line 796
    add-int/lit8 v2, v2, -0x1

    .line 797
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IMiuiActivityObserver;
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_a1

    .line 798
    .local v3, "observer":Landroid/app/IMiuiActivityObserver;
    if-eqz v3, :cond_95

    .line 800
    :try_start_30
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 801
    .local v4, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    .line 802
    .local v5, "cookie":Ljava/lang/Object;
    if-eqz v5, :cond_59

    instance-of v6, v5, Landroid/content/Intent;

    if-eqz v6, :cond_59

    .line 803
    move-object v6, v5

    check-cast v6, Landroid/content/Intent;

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 804
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_5c

    .line 806
    :cond_51
    const-string v6, "MiuiLog-ActivityObserver:"

    const-string v7, " No need to dispatch the event, ignore it!"

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 810
    :cond_59
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_5c} :catch_79
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5c} :catch_5d
    .catchall {:try_start_30 .. :try_end_5c} :catchall_a1

    .line 816
    .end local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    .end local v4    # "record":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "cookie":Ljava/lang/Object;
    :goto_5c
    goto :goto_95

    .line 814
    .restart local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    :catch_5d
    move-exception v4

    .line 815
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5e
    const-string v5, "MiuiActivityController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_95

    .line 812
    .restart local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    :catch_79
    move-exception v4

    .line 813
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "MiuiActivityController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_5c

    .line 818
    .end local v3    # "observer":Landroid/app/IMiuiActivityObserver;
    :cond_95
    :goto_95
    goto :goto_1e

    .line 819
    :cond_96
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    # getter for: Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 820
    .end local v2    # "i":I
    monitor-exit v1

    goto :goto_a4

    :catchall_a1
    move-exception v2

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_5e .. :try_end_a3} :catchall_a1

    throw v2

    .line 829
    :cond_a4
    :goto_a4
    return-void

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

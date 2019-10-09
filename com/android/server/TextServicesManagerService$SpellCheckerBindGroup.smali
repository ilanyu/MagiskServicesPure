.class final Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

.field private final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mUnbindCalled:Z

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V
    .registers 3
    .param p2, "connection"    # Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 842
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    const-class p1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 836
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 837
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 843
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 844
    new-instance p1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {p1, p0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    .line 845
    # getter for: Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->access$1900(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 846
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 829
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    return-object v0
.end method

.method private cleanLocked()V
    .registers 5

    .line 905
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 906
    return-void

    .line 909
    :cond_5
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 910
    return-void

    .line 912
    :cond_e
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 913
    return-void

    .line 915
    :cond_17
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 916
    return-void

    .line 918
    :cond_20
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    # getter for: Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->access$2000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "sciId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 920
    .local v1, "cur":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-ne v1, p0, :cond_35

    .line 924
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    :cond_35
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$2100(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 927
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    .line 928
    return-void
.end method

.method static synthetic lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/TextServicesManagerService$SessionRequest;)Z
    .registers 3
    .param p0, "scListenerBinder"    # Landroid/os/IBinder;
    .param p1, "request"    # Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 893
    iget-object v0, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 7
    .param p1, "request"    # Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 942
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 943
    return-void

    .line 945
    :cond_5
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v1, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->register(Landroid/os/IInterface;)Z

    .line 946
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_16

    .line 947
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    return-void

    .line 951
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v1, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v3, p1, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v4, p0, p1}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_2c

    .line 958
    goto :goto_30

    .line 955
    :catch_2c
    move-exception v0

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 959
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 960
    return-void
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 10
    .param p1, "spellChecker"    # Lcom/android/internal/textservice/ISpellCheckerService;

    .line 853
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    .line 854
    return-void

    .line 856
    :cond_5
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 860
    :try_start_a
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 861
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_33

    .line 862
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 863
    .local v2, "request":Lcom/android/server/TextServicesManagerService$SessionRequest;
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, v2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    new-instance v7, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v7, p0, v2}, Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Lcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 866
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    .end local v2    # "request":Lcom/android/server/TextServicesManagerService$SessionRequest;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 868
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_39

    .line 872
    .end local v0    # "size":I
    goto :goto_3d

    .line 869
    :catch_39
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 873
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3d
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 874
    return-void
.end method

.method public onServiceDisconnectedLocked()V
    .registers 2

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 883
    return-void
.end method

.method onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/TextServicesManagerService$SessionRequest;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .param p2, "request"    # Lcom/android/server/TextServicesManagerService$SessionRequest;

    .line 964
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 965
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_d

    .line 966
    monitor-exit v0

    return-void

    .line 968
    :cond_d
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_21

    if-eqz v1, :cond_1c

    .line 970
    :try_start_15
    iget-object v1, p2, Lcom/android/server/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v1, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_21

    .line 976
    goto :goto_1c

    .line 971
    :catch_1b
    move-exception v1

    .line 978
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 979
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v1
.end method

.method public removeAllLocked()V
    .registers 5

    .line 931
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v1, "Remove the spell checker bind unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackCount()I

    move-result v0

    .line 933
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_21

    .line 934
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v3, v1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v2, v3}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 933
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 936
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 937
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 938
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 939
    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 889
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    # getter for: Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 890
    :try_start_7
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->unregister(Landroid/os/IInterface;)Z

    .line 891
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 892
    .local v1, "scListenerBinder":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$WPb2Qavn5gWhsY_rCdz_4UGBTAw;

    invoke-direct {v2, v1}, Lcom/android/server/-$$Lambda$TextServicesManagerService$SpellCheckerBindGroup$WPb2Qavn5gWhsY_rCdz_4UGBTAw;-><init>(Landroid/os/IBinder;)V

    .line 894
    .local v2, "removeCondition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/TextServicesManagerService$SessionRequest;>;"
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 895
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 896
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 897
    .end local v1    # "scListenerBinder":Landroid/os/IBinder;
    .end local v2    # "removeCondition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/TextServicesManagerService$SessionRequest;>;"
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

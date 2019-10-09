.class public Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiActivityController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
    }
.end annotation


# static fields
.field private static final DEBUG_MESSAGES:Z

.field private static final PREFIX_TAG:Ljava/lang/String; = "MiuiLog-ActivityObserver:"

.field private static final TAG:Ljava/lang/String; = "MiuiActivityController"

.field private static sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# instance fields
.field private final mActivityObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IMiuiActivityObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

.field private final mSendIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 752
    const-string v0, "debug.miui.activity.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    .line 754
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    .line 906
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    .line 907
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiuiActivityController"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 909
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 910
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    .line 911
    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 749
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mSendIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .registers 1

    .line 902
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sInstance:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    return-object v0
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 971
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_18

    const-string v0, "MiuiActivityController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_18
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 940
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 941
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 944
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 945
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 948
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 949
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 952
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 953
    .local v0, "size":I
    const-string v1, "MiuiLog-ActivityObserver:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    .line 954
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->codeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " observer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    if-gtz v0, :cond_45

    .line 957
    return-void

    .line 959
    :cond_45
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 960
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 961
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 963
    iput p4, v1, Landroid/os/Message;->arg2:I

    .line 964
    if-eqz p5, :cond_57

    .line 965
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 967
    :cond_57
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mH:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->sendMessage(Landroid/os/Message;)Z

    .line 968
    return-void
.end method


# virtual methods
.method public activityDestroyed(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 936
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    .line 937
    return-void
.end method

.method public activityIdle(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 922
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    .line 923
    return-void
.end method

.method public activityPaused(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 929
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    .line 930
    return-void
.end method

.method public activityResumed(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 926
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    .line 927
    return-void
.end method

.method public activityStopped(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;

    .line 932
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->sendMessage(ILjava/lang/Object;)V

    .line 934
    return-void
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .registers 4
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 914
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 915
    return-void
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IMiuiActivityObserver;

    .line 918
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->mActivityObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 919
    return-void
.end method

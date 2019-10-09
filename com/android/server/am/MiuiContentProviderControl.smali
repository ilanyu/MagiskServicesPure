.class public Lcom/android/server/am/MiuiContentProviderControl;
.super Ljava/lang/Object;
.source "MiuiContentProviderControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;
    }
.end annotation


# static fields
.field static final CALLER_TYPE_APP:I = 0x64

.field static final CALLER_TYPE_EXTERNAL:I = 0x65

.field static final CALLER_TYPE_PROVIDER_CONTROL:I = 0x66

.field static final DEBUG_CONTROL_PROVIDER_STARTS:Z = false

.field static final LOW_PRIORITY_DELAY:J = 0x96L

.field public static final MAIN_THREAD_ID:I = 0x1

.field static final MAX_TIME_OUT:J = 0x5dcL

.field static final MSG_NOTIFY_WAIT_THREAD_WHEN_PROVIDER_REMOVED:I = 0x66

.field static final MSG_START_PROVIDER:I = 0x65

.field private static final PROP_MCPC_OPEN_DEFAULT:Ljava/lang/String; = "persist.sys.mcpc_open"

.field static final SHORT_DELAY:J = 0x5L

.field static final TAG:Ljava/lang/String;

.field static final THREAD_ID_CALLER_TYPE_EXTERNAL:I = -0x3e8

.field static mInstance:Lcom/android/server/am/MiuiContentProviderControl;


# instance fields
.field private final MAX_SIZE:I

.field private canOpen:Z

.field private closeCheck:Z

.field private enableProviderControl:Z

.field private fWaitProcessStart:Ljava/lang/reflect/Field;

.field private lasEnforcedTime:J

.field private logBuilder:Ljava/lang/StringBuilder;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

.field private mNotifyProviderReady:Ljava/lang/reflect/Method;

.field private final mProviderInfoCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/StartProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/StartProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

.field private mWorkThread:Lcom/android/server/ServiceThread;

.field private maxSize:I

.field private sendNoDelayEnforcedMsg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Lcom/android/server/am/MiuiContentProviderControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->MAX_SIZE:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    .line 99
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    .line 100
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    .line 115
    :try_start_28
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string v3, "getContentProviderImpl"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/app/IApplicationThread;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    const/4 v5, 0x6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    .line 119
    const-class v2, Landroid/app/IApplicationThread;

    const-string/jumbo v3, "notifyProviderReady"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Landroid/app/ContentProviderHolder;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    .line 121
    const-class v1, Landroid/app/ContentProviderHolder;

    const-string/jumbo v2, "waitProcessStart"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_76} :catch_77

    .line 125
    goto :goto_7b

    .line 123
    :catch_77
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7b
    sget-boolean v1, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;

    if-nez v1, :cond_8c

    goto :goto_ab

    .line 132
    :cond_8c
    iput-object p1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 134
    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    .line 135
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 136
    new-instance v0, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;-><init>(Lcom/android/server/am/MiuiContentProviderControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    .line 138
    return-void

    .line 128
    :cond_ab
    :goto_ab
    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MiuiContentProviderControl;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MiuiContentProviderControl;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MiuiContentProviderControl;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MiuiContentProviderControl;
    .param p1, "x1"    # J

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiContentProviderControl;->rescheduleProviderListLocked(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MiuiContentProviderControl;Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MiuiContentProviderControl;
    .param p1, "x1"    # Lcom/android/server/am/StartProviderInfo;
    .param p2, "x2"    # Landroid/app/ContentProviderHolder;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiContentProviderControl;->enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    return-void
.end method

.method private enforceGetContentProviderImpl(Lcom/android/server/am/StartProviderInfo;)Landroid/app/ContentProviderHolder;
    .registers 8
    .param p1, "info"    # Lcom/android/server/am/StartProviderInfo;

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mEnforceGetContentProviderImpl:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/server/am/StartProviderInfo;->mToken:Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p1, Lcom/android/server/am/StartProviderInfo;->mStable:Z

    .line 212
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p1, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p1, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContentProviderHolder;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    return-object v0

    .line 214
    :catch_41
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/am/StartProviderInfo;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mNotifyProviderReady:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/android/server/am/StartProviderInfo;->mCaller:Landroid/app/IApplicationThread;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 225
    goto :goto_1b

    .line 223
    :catch_17
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MiuiContentProviderControl;
    .registers 1

    .line 145
    sget-object v0, Lcom/android/server/am/MiuiContentProviderControl;->mInstance:Lcom/android/server/am/MiuiContentProviderControl;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 141
    new-instance v0, Lcom/android/server/am/MiuiContentProviderControl;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiContentProviderControl;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiContentProviderControl;->mInstance:Lcom/android/server/am/MiuiContentProviderControl;

    .line 142
    return-void
.end method

.method private isWaitProcessStart(Landroid/app/ContentProviderHolder;)Z
    .registers 3
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->fWaitProcessStart:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "info"    # Lcom/android/server/am/StartProviderInfo;

    .line 416
    const-string v0, "#SPInfo : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 418
    const-string v0, " CallerPkg : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget-object v0, p2, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v0, " Name : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-object v0, p2, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    const-string v0, " CallerThreadId : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    iget-wide v0, p2, Lcom/android/server/am/StartProviderInfo;->mCallerThreadId:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 424
    const-string v0, " Delay : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-wide v0, p2, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 426
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method private rescheduleProviderListLocked(J)V
    .registers 11
    .param p1, "now"    # J

    .line 327
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v0, :cond_5

    .line 328
    return-void

    .line 331
    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    cmp-long v0, p1, v0

    const/16 v1, 0x65

    if-ltz v0, :cond_c6

    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_c6

    .line 332
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/StartProviderInfo;

    .line 333
    .local v0, "spInfo":Lcom/android/server/am/StartProviderInfo;
    const/4 v2, 0x0

    .line 335
    .local v2, "next":Lcom/android/server/am/StartProviderInfo;
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_2f

    .line 336
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/am/StartProviderInfo;

    .line 339
    :cond_2f
    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 340
    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-gt v4, v5, :cond_44

    .line 341
    iput-boolean v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    .line 342
    iget-wide v4, v2, Lcom/android/server/am/StartProviderInfo;->mDelay:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    goto :goto_4f

    .line 344
    :cond_44
    const-wide/16 v4, 0x5

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    goto :goto_4f

    .line 347
    :cond_4a
    const-wide/16 v4, 0x96

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    .line 350
    :goto_4f
    iget-wide v4, v0, Lcom/android/server/am/StartProviderInfo;->mCallingIdentity:J

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 353
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string v4, "ProviderControl enforce Provider : callerPkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/StartProviderInfo;->mCallerPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string v4, " name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string v4, " callerUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    const-string v4, " callerPid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    sget-object v3, Lcom/android/server/am/MiuiContentProviderControl;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/android/server/am/MiuiContentProviderControl;->enforceGetContentProviderImpl(Lcom/android/server/am/StartProviderInfo;)Landroid/app/ContentProviderHolder;

    move-result-object v3

    .line 367
    .local v3, "holder":Landroid/app/ContentProviderHolder;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 369
    if-eqz v3, :cond_b4

    invoke-direct {p0, v3}, Lcom/android/server/am/MiuiContentProviderControl;->isWaitProcessStart(Landroid/app/ContentProviderHolder;)Z

    move-result v4

    if-nez v4, :cond_b7

    .line 370
    :cond_b4
    invoke-direct {p0, v0, v3}, Lcom/android/server/am/MiuiContentProviderControl;->enforceNotifyProviderReady(Lcom/android/server/am/StartProviderInfo;Landroid/app/ContentProviderHolder;)V

    .line 373
    :cond_b7
    iget-object v4, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 374
    .local v4, "msg":Landroid/os/Message;
    nop

    .line 382
    iget-object v5, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-wide v6, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long/2addr v6, p1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    .end local v0    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    .end local v2    # "next":Lcom/android/server/am/StartProviderInfo;
    .end local v3    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_c6
    iget-wide v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-lez v0, :cond_e3

    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_e3

    .line 386
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-object v2, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    :cond_e3
    return-void
.end method


# virtual methods
.method public addProviderInfoLocked(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;ZIJ)Z
    .registers 28
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerPid"    # I
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "stable"    # Z
    .param p7, "userId"    # I
    .param p8, "callerThreadId"    # J

    move-object/from16 v0, p0

    .line 248
    iget-boolean v1, v0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    if-nez v1, :cond_c3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_c3

    const-wide/16 v1, 0x1

    cmp-long v1, p8, v1

    if-nez v1, :cond_16

    goto/16 :goto_c3

    .line 253
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 254
    .local v1, "callingIdentity":J
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    const/4 v15, 0x0

    .line 256
    .local v15, "spInfo":Lcom/android/server/am/StartProviderInfo;
    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_3f

    .line 257
    new-instance v16, Lcom/android/server/am/StartProviderInfo;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/server/am/StartProviderInfo;-><init>(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJ)V

    .end local v15    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    .local v3, "spInfo":Lcom/android/server/am/StartProviderInfo;
    goto :goto_61

    .line 260
    .end local v3    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    .restart local v15    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    :cond_3f
    iget-object v3, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/android/server/am/StartProviderInfo;

    .line 261
    .end local v15    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    .local v17, "spInfo":Lcom/android/server/am/StartProviderInfo;
    const-wide/16 v15, 0x96

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v1

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/StartProviderInfo;->reset(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;JILandroid/os/IBinder;ZIJJ)V

    .line 265
    .end local v17    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    .restart local v3    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    :goto_61
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, v0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    if-le v4, v5, :cond_78

    .line 267
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iput v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    .line 270
    :cond_78
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x14

    const/16 v6, 0x65

    const/4 v7, 0x1

    if-lt v4, v5, :cond_9c

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    .line 274
    iget-boolean v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    if-nez v4, :cond_9c

    .line 275
    iput-boolean v7, v0, Lcom/android/server/am/MiuiContentProviderControl;->sendNoDelayEnforcedMsg:Z

    .line 276
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 277
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .end local v4    # "msg":Landroid/os/Message;
    :cond_9c
    iget-object v4, v0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v7, :cond_c2

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 283
    .local v4, "now":J
    iget-object v8, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v8, v6}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 284
    .local v6, "msg":Landroid/os/Message;
    iget-wide v8, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_ba

    .line 285
    iget-object v8, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v8, v6}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c2

    .line 287
    :cond_ba
    iget-object v8, v0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    iget-wide v9, v0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    sub-long/2addr v9, v4

    invoke-virtual {v8, v6, v9, v10}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    .end local v4    # "now":J
    .end local v6    # "msg":Landroid/os/Message;
    :cond_c2
    :goto_c2
    return v7

    .line 250
    .end local v1    # "callingIdentity":J
    .end local v3    # "spInfo":Lcom/android/server/am/StartProviderInfo;
    :cond_c3
    :goto_c3
    const/4 v1, 0x0

    return v1
.end method

.method public callerIsTopAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .line 229
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 230
    return v1

    .line 232
    :cond_6
    if-eqz p1, :cond_31

    .line 233
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 234
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_31

    .line 235
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_31

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 239
    return v1

    .line 243
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public closeProviderControl()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 202
    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v1, :cond_f

    .line 203
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 205
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    .line 206
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    return-void

    .line 206
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 391
    const-string v0, "  MIUI ADD :  MCPC dump start : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const-string v0, " canOpen : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 394
    const-string v0, " enableProviderControl : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 396
    const-string v0, " closeCheck : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 398
    const-string v0, " lasEnforcedTime : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-wide v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->lasEnforcedTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 400
    const-string/jumbo v0, "maxSize : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 402
    const-string v0, "#  ProviderInfoList : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 404
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/StartProviderInfo;>;"
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MiuiContentProviderControl;->printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V

    goto :goto_43

    .line 407
    :cond_53
    const-string v1, "#  ProviderInfoObjCache : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartProviderInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/MiuiContentProviderControl;->printStartProviderInfo(Ljava/io/PrintWriter;Lcom/android/server/am/StartProviderInfo;)V

    goto :goto_5e

    .line 412
    :cond_6e
    const-string v1, "  MCPC dump END !!!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public enableProviderControlLocked()V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-nez v0, :cond_5

    .line 183
    return-void

    .line 185
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    .line 186
    const-string/jumbo v0, "persist.sys.mcpc_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 187
    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    .line 189
    :cond_14
    return-void
.end method

.method public openProviderControl()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/server/am/MiuiContentProviderControl;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 193
    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->canOpen:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->enableProviderControl:Z

    if-nez v1, :cond_f

    goto :goto_17

    .line 196
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->closeCheck:Z

    .line 197
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 198
    return-void

    .line 194
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 197
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeProviderInfoLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "removeInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/StartProviderInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/MiuiContentProviderControl;->mProviderInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/StartProviderInfo;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartProviderInfo;

    .line 304
    .local v2, "info":Lcom/android/server/am/StartProviderInfo;
    iget-object v3, v2, Lcom/android/server/am/StartProviderInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget v3, v2, Lcom/android/server/am/StartProviderInfo;->mUserId:I

    if-ne v3, p2, :cond_29

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 308
    .end local v2    # "info":Lcom/android/server/am/StartProviderInfo;
    :cond_29
    goto :goto_b

    .line 309
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 310
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 311
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x66

    iput v3, v2, Landroid/os/Message;->what:I

    .line 312
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/android/server/am/MiuiContentProviderControl;->mWorkHandler:Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MiuiContentProviderControl$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    .end local v2    # "msg":Landroid/os/Message;
    :cond_40
    return-void
.end method

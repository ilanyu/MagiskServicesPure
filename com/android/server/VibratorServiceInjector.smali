.class public Lcom/android/server/VibratorServiceInjector;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorServiceInjector$ProcessObserver;,
        Lcom/android/server/VibratorServiceInjector$VibrationInfo;,
        Lcom/android/server/VibratorServiceInjector$WorkerHandler;,
        Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;,
        Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;,
        Lcom/android/server/VibratorServiceInjector$MyContextWrapper;,
        Lcom/android/server/VibratorServiceInjector$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_ACTIVITY_CHANGED:I = 0x3

.field private static final MESSAGE_ADD_VIBRATION_LOG:I = 0x4

.field private static final MESSAGE_NOTIFICATION_POST:I = 0x2

.field private static final MESSAGE_UPDATE_SETTINGS:I = 0x5

.field private static final MESSAGE_VIBRATE:I = 0x1

.field private static final NOTIFICATION_VIBRATION_TIME_RATE:J = 0x3a98L

.field private static final NOTIFICATION_VIBRATION_TIME_THRESHOLD:J = 0x2bcL

.field private static final TAG:Ljava/lang/String; = "VibratorServiceInjector"

.field private static VIBRATION_THRESHOLD_IN_CALL:J = 0x0L

.field private static final VIBRATION_TIME_DELAY:J = 0x4bL

.field private static sContext:Landroid/content/Context;

.field private static sForegroundUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIncall:Z

.field private static sListener:Landroid/telephony/PhoneStateListener;

.field private static final sLock:Ljava/lang/Object;

.field private static sNotificationVibrationInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sVibrationsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorServiceInjector$VibrationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sVibrationsLimitPerPkg:I

.field private static sVibratorService:Lcom/android/server/VibratorService;

.field private static sWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-wide/16 v0, 0x1e

    sput-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    .line 108
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->initHandler()V

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    .line 110
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    .line 349
    const/16 v0, 0xa

    sput v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsLimitPerPkg:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .line 41
    sget v0, Lcom/android/server/VibratorServiceInjector;->sVibrationsLimitPerPkg:I

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 41
    sput-boolean p0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    return p0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 41
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->updateSettings()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/server/VibratorService;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sVibratorService:Lcom/android/server/VibratorService;

    return-object v0
.end method

.method public static addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 12
    .param p0, "effect"    # Landroid/os/VibrationEffect;
    .param p1, "usageHint"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 394
    new-instance v1, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    sget-object v2, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    .line 395
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;-><init>(Landroid/os/VibrationEffect;IILjava/lang/String;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public static dumpVibrations(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    const-string v1, "Previous vibrations of per Pkg:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 403
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorServiceInjector$VibrationInfo;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    .line 404
    .local v4, "info":Lcom/android/server/VibratorServiceInjector$VibrationInfo;
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .end local v4    # "info":Lcom/android/server/VibratorServiceInjector$VibrationInfo;
    goto :goto_22

    .line 407
    .end local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorServiceInjector$VibrationInfo;>;"
    :cond_3b
    goto :goto_12

    .line 408
    :cond_3c
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public static init(Lcom/android/server/VibratorService;Landroid/content/Context;)V
    .registers 10
    .param p0, "service"    # Lcom/android/server/VibratorService;
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    sput-object p1, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    .line 72
    sput-object p0, Lcom/android/server/VibratorServiceInjector;->sVibratorService:Lcom/android/server/VibratorService;

    .line 73
    new-instance v0, Lcom/android/server/VibratorServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/VibratorServiceInjector$1;-><init>()V

    .line 82
    .local v0, "listenerService":Landroid/service/notification/NotificationListenerService;
    new-instance v1, Lcom/android/server/VibratorServiceInjector$MyContextWrapper;

    invoke-direct {v1, p1}, Lcom/android/server/VibratorServiceInjector$MyContextWrapper;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, "sContextWrapper":Lcom/android/server/VibratorServiceInjector$MyContextWrapper;
    const/4 v2, -0x1

    :try_start_f
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/server/VibratorService;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 86
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/VibratorServiceInjector$ProcessObserver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/VibratorServiceInjector$ProcessObserver;-><init>(Lcom/android/server/VibratorServiceInjector$1;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_26} :catch_27

    .line 90
    goto :goto_2f

    .line 88
    :catch_27
    move-exception v3

    .line 89
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "VibratorServiceInjector"

    const-string v5, "Cannot register listener"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2f
    sget-object v3, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/VibratorServiceInjector$SettingsObserver;

    sget-object v7, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-direct {v6, v7}, Lcom/android/server/VibratorServiceInjector$SettingsObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 94
    sget-object v2, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method private static initHandler()V
    .registers 3

    .line 115
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "vibrator-injector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 117
    new-instance v1, Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    .line 118
    return-void
.end method

.method private static isNotification(I)Z
    .registers 2
    .param p0, "usageHint"    # I

    .line 430
    packed-switch p0, :pswitch_data_8

    .line 438
    const/4 v0, 0x0

    return v0

    .line 436
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static listenForCallState(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/server/VibratorServiceInjector$2;

    invoke-direct {v0}, Lcom/android/server/VibratorServiceInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    .line 104
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 105
    return-void
.end method

.method public static shouldVibrateForMiui(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 9
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "usageHint"    # I
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x1

    .line 123
    .local v0, "result":Z
    const/4 v1, 0x6

    if-eq p3, v1, :cond_7

    const/4 v1, 0x5

    if-ne p3, v1, :cond_b

    .line 125
    :cond_7
    invoke-static {p5}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 128
    :cond_b
    if-nez v0, :cond_f

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_f
    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3a

    .line 137
    :cond_24
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p3}, Lcom/android/server/VibratorServiceInjector;->isNotification(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 138
    # invokes: Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->filterNotificationVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->access$300(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 142
    :cond_34
    if-eqz p2, :cond_39

    .line 143
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/VibratorServiceInjector;->addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V

    .line 146
    :cond_39
    return-object p2

    .line 133
    :cond_3a
    :goto_3a
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/VibratorServiceInjector;->addToVibrationsCollection(Landroid/os/VibrationEffect;IILjava/lang/String;)V

    .line 134
    return-object p2
.end method

.method private static updateSettings()V
    .registers 5

    .line 169
    sget-object v0, Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    sget-object v1, Lcom/android/server/VibratorServiceInjector;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "inputMethodId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 173
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 174
    .local v2, "endIndex":I
    if-lez v2, :cond_27

    .line 175
    sget-object v3, Lcom/android/server/VibratorServiceInjector;->sWhiteList:Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v1    # "inputMethodId":Ljava/lang/String;
    .end local v2    # "endIndex":I
    :cond_27
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public static weakenVibrationIfNecessary(JI)J
    .registers 5
    .param p0, "time"    # J
    .param p2, "uid"    # I

    .line 151
    sget-boolean v0, Lcom/android/server/VibratorServiceInjector;->sIncall:Z

    if-eqz v0, :cond_12

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-wide v0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    .line 152
    sget-wide p0, Lcom/android/server/VibratorServiceInjector;->VIBRATION_THRESHOLD_IN_CALL:J

    .line 154
    :cond_12
    return-wide p0
.end method

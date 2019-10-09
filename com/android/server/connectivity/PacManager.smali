.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field private static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private volatile mHasDownloaded:Z

.field private volatile mHasSentBroadcast:Z

.field private mLastPort:I

.field private final mNetThread:Landroid/os/HandlerThread;

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private volatile mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "android.pacmanager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    .line 147
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 154
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 157
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Lcom/android/net/IProxyService;

    .line 56
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/PacManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # I

    .line 56
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .line 56
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 295
    const-string v0, "PacManager"

    const-string v1, "No context for binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    .line 302
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void

    .line 305
    :cond_28
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 337
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 341
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 375
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 377
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "url":Ljava/net/URL;
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 216
    .local v1, "urlConnection":Ljava/net/URLConnection;
    const-wide/16 v2, -0x1

    .line 218
    .local v2, "contentLength":J
    :try_start_11
    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_1d

    move-wide v2, v4

    .line 221
    goto :goto_1e

    .line 219
    :catch_1d
    move-exception v4

    .line 222
    :goto_1e
    const-wide/32 v4, 0x1312d00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_55

    .line 225
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 226
    .local v6, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 228
    .local v7, "buffer":[B
    :goto_2e
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "count":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_50

    .line 229
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 230
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v10, v8

    cmp-long v8, v10, v4

    if-gtz v8, :cond_48

    .end local v9    # "count":I
    goto :goto_2e

    .line 231
    .restart local v9    # "count":I
    :cond_48
    new-instance v4, Ljava/io/IOException;

    const-string v5, "PAC too big"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_50
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 223
    .end local v6    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    :cond_55
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PAC too big: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 162
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 164
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 5
    .param p1, "delayIndex"    # I

    .line 266
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_14

    .line 268
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 270
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNextDelay(I)I
    .registers 3
    .param p1, "currentDelay"    # I

    .line 238
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    .line 239
    return v0

    .line 241
    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "conn.pac_change_delay"

    const-string v2, "8 32 120 14400 43200"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v2, "pac_change_delay"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1a

    :cond_19
    move-object v3, v2

    :goto_1a
    return-object v3
.end method

.method private longSchedule()V
    .registers 2

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 246
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 247
    return-void
.end method

.method private reschedule()V
    .registers 2

    .line 250
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 251
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 252
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 393
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .registers 4

    monitor-enter p0

    .line 397
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    goto :goto_20

    .line 400
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_1e

    .line 401
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    .line 404
    :cond_1e
    monitor-exit p0

    return-void

    .line 398
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 396
    :catchall_22
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PacManager;
    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    if-nez v0, :cond_e

    .line 281
    const-string v0, "PacManager"

    const-string/jumbo v1, "setCurrentProxyScript: no proxy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    .line 289
    goto :goto_1e

    .line 287
    :catch_16
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacManager"

    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method private setDownloadIn(I)V
    .registers 9
    .param p1, "delayIndex"    # I

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 275
    .local v0, "delay":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 276
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 277
    return-void
.end method

.method private unbind()V
    .registers 4

    .line 380
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 381
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 382
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 384
    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1b

    .line 385
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 386
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 388
    :cond_1b
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 389
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 390
    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    monitor-enter p0

    .line 177
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 178
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_75

    if-lez v0, :cond_22

    .line 180
    monitor-exit p0

    return v1

    .line 182
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 183
    iput v1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 184
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 186
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 187
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_75

    .line 188
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 190
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_75

    .line 192
    :try_start_49
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_72

    if-eqz v2, :cond_6f

    .line 196
    :try_start_54
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v2}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5f
    .catchall {:try_start_54 .. :try_end_59} :catchall_5d

    .line 200
    :try_start_59
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_72

    .line 201
    :goto_5c
    goto :goto_6f

    .line 200
    :catchall_5d
    move-exception v1

    goto :goto_6b

    .line 197
    :catch_5f
    move-exception v2

    .line 198
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_60
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_5d

    .line 200
    .end local v2    # "e":Landroid/os/RemoteException;
    :try_start_67
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    goto :goto_5c

    :goto_6b
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    throw v1

    .line 203
    :cond_6f
    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_72

    .line 204
    monitor-exit p0

    return v1

    .line 203
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 176
    .end local p1    # "proxy":Landroid/net/ProxyInfo;
    :catchall_75
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PacManager;
    throw p1
.end method

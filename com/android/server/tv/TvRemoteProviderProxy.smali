.class final Lcom/android/server/tv/TvRemoteProviderProxy;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;,
        Lcom/android/server/tv/TvRemoteProviderProxy$Connection;,
        Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_KEY:Z = false

.field protected static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.tv.remoteprovider.TvRemoteProvider"

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvProxy"


# instance fields
.field private mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

.field private mRunning:Z

.field private final mUid:I

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "TvRemoteProvProxy"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 74
    iput p3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    .line 75
    iput p4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p1, "x1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p1, "x1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    return-object v0
.end method

.method private bind()V
    .registers 6

    .line 141
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v0, :cond_76

    .line 142
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 143
    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    const v2, 0x4000001

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 152
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v1, :cond_5a

    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_5a

    .line 153
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Bind failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_5a} :catch_5b

    .line 159
    :cond_5a
    goto :goto_76

    .line 155
    :catch_5b
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_76

    .line 157
    const-string v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "service":Landroid/content/Intent;
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_76
    :goto_76
    return-void
.end method

.method private disconnect()V
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v1, :cond_12

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    .line 233
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->dispose()V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 236
    :cond_12
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 223
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v0, p1, :cond_21

    .line 224
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 227
    :cond_21
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 213
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "onConnectionReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_f
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v1, p1, :cond_22

    .line 216
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "mConnectionReady = true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    .line 219
    :cond_22
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private shouldBind()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    return v0
.end method

.method private unbind()V
    .registers 4

    .line 164
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_29

    .line 165
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 166
    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 170
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 171
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    :cond_29
    return-void
.end method

.method private updateBinding()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    goto :goto_d

    .line 132
    :cond_a
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 134
    :goto_d
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 93
    :goto_1b
    return v0
.end method

.method public inputBridgeConnected(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 241
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_20

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": inputBridgeConnected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    if-eqz v1, :cond_29

    .line 244
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->onInputBridgeConnected(Landroid/os/IBinder;)V

    .line 246
    :cond_29
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 177
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 178
    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceConnected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_87

    .line 182
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 184
    invoke-static {p2}, Landroid/media/tv/ITvRemoteProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;

    move-result-object v0

    .line 185
    .local v0, "provider":Landroid/media/tv/ITvRemoteProvider;
    if-eqz v0, :cond_71

    .line 186
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-direct {v1, p0, v0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V

    .line 187
    .local v1, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 188
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_35
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 190
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_53

    .line 191
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_70

    .line 192
    const-string v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Connected successfully."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 190
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v3

    .line 195
    :cond_56
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_70

    .line 196
    const-string v2, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v1    # "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    :cond_70
    :goto_70
    goto :goto_87

    .line 200
    :cond_71
    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Service returned invalid remote-control provider binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "provider":Landroid/media/tv/ITvRemoteProvider;
    :cond_87
    :goto_87
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 207
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 209
    return-void
.end method

.method public rebindIfDisconnected()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 122
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 123
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    .line 125
    :cond_13
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .line 89
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .line 90
    return-void
.end method

.method public start()V
    .registers 4

    .line 98
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v0, :cond_24

    .line 99
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 100
    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 106
    :cond_24
    return-void
.end method

.method public stop()V
    .registers 4

    .line 109
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v0, :cond_24

    .line 110
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 111
    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 115
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 117
    :cond_24
    return-void
.end method

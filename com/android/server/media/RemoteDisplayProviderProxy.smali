.class final Lcom/android/server/media/RemoteDisplayProviderProxy;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;,
        Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field private mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private mDisplayState:Landroid/media/RemoteDisplayState;

.field private mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

.field private final mDisplayStateChanged:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mRunning:Z

.field private mScheduledDisplayStateChangedCallback:Z

.field private mSelectedDisplayId:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-string v0, "RemoteDisplayProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 68
    iput p3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 41
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 41
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p1, "x1"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 41
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p1, "x1"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p1, "x1"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .param p2, "x2"    # Landroid/media/RemoteDisplayState;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    return-void
.end method

.method private bind()V
    .registers 6

    .line 185
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-nez v0, :cond_76

    .line 186
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 187
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.media.remotedisplay.RemoteDisplayProvider"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    const v2, 0x4000001

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 196
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-nez v1, :cond_5a

    sget-boolean v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_5a

    .line 197
    const-string v1, "RemoteDisplayProvider"

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

    .line 203
    :cond_5a
    goto :goto_76

    .line 199
    :catch_5b
    move-exception v1

    .line 200
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_76

    .line 201
    const-string v2, "RemoteDisplayProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "service":Landroid/content/Intent;
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :cond_76
    :goto_76
    return-void
.end method

.method private disconnect()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-eqz v0, :cond_1d

    .line 285
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 286
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    .line 288
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 289
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->dispose()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 291
    invoke-direct {p0, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    .line 293
    :cond_1d
    return-void
.end method

.method private onConnectionDied(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 5
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 266
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_21

    .line 267
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 268
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 272
    :cond_21
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 253
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_1d

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 256
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-eqz v0, :cond_12

    .line 257
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    .line 259
    :cond_12
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 260
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    .line 263
    :cond_1d
    return-void
.end method

.method private onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .registers 6
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    .param p2, "state"    # Landroid/media/RemoteDisplayState;

    .line 275
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-ne v0, p1, :cond_24

    .line 276
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 277
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": State changed, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayState(Landroid/media/RemoteDisplayState;)V

    .line 281
    :cond_24
    return-void
.end method

.method private setDisplayState(Landroid/media/RemoteDisplayState;)V
    .registers 4
    .param p1, "state"    # Landroid/media/RemoteDisplayState;

    .line 296
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 297
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 298
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    if-nez v0, :cond_18

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 300
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    :cond_18
    return-void
.end method

.method private shouldBind()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-eqz v0, :cond_e

    .line 176
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 178
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private unbind()V
    .registers 4

    .line 208
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-eqz v0, :cond_29

    .line 209
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 210
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 214
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 215
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    :cond_29
    return-void
.end method

.method private updateBinding()V
    .registers 2

    .line 166
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    goto :goto_d

    .line 169
    :cond_a
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 171
    :goto_d
    return-void
.end method


# virtual methods
.method public adjustDisplayVolume(I)V
    .registers 4
    .param p1, "delta"    # I

    .line 122
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 123
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->adjustVolume(Ljava/lang/String;I)V

    .line 125
    :cond_f
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDiscoveryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSelectedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public getDisplayState()Landroid/media/RemoteDisplayState;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    return-object v0
.end method

.method public getFlattenedComponentName()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 129
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 128
    :goto_1b
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 221
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 222
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    if-eqz v0, :cond_66

    .line 226
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 228
    invoke-static {p2}, Landroid/media/IRemoteDisplayProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;

    move-result-object v0

    .line 229
    .local v0, "provider":Landroid/media/IRemoteDisplayProvider;
    if-eqz v0, :cond_50

    .line 230
    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-direct {v1, p0, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V

    .line 231
    .local v1, "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 232
    iput-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    goto :goto_4f

    .line 234
    :cond_35
    sget-boolean v2, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 235
    const-string v2, "RemoteDisplayProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1    # "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    :cond_4f
    :goto_4f
    goto :goto_66

    .line 239
    :cond_50
    const-string v1, "RemoteDisplayProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Service returned invalid remote display provider binder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "provider":Landroid/media/IRemoteDisplayProvider;
    :cond_66
    :goto_66
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 246
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 247
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 250
    return-void
.end method

.method public rebindIfDisconnected()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    .line 163
    :cond_10
    return-void
.end method

.method public setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 85
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    .line 86
    return-void
.end method

.method public setDiscoveryMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 93
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    if-eq v0, p1, :cond_12

    .line 94
    iput p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 95
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_f

    .line 96
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setDiscoveryMode(I)V

    .line 98
    :cond_f
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 100
    :cond_12
    return-void
.end method

.method public setDisplayVolume(I)V
    .registers 4
    .param p1, "volume"    # I

    .line 116
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 117
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->setVolume(Ljava/lang/String;I)V

    .line 119
    :cond_f
    return-void
.end method

.method public setSelectedDisplay(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 104
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 105
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->disconnect(Ljava/lang/String;)V

    .line 107
    :cond_17
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 109
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->connect(Ljava/lang/String;)V

    .line 111
    :cond_24
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 113
    :cond_27
    return-void
.end method

.method public start()V
    .registers 4

    .line 137
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-nez v0, :cond_24

    .line 138
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 139
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 143
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 145
    :cond_24
    return-void
.end method

.method public stop()V
    .registers 4

    .line 148
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    if-eqz v0, :cond_24

    .line 149
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 150
    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 154
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 156
    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

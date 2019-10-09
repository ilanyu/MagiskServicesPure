.class public Lcom/android/server/location/MetokProxy;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final CMD_CAN_TAKEOVER:Ljava/lang/String; = "metok_takeover"

.field private static final D:Z

.field private static final EXTRA_CLIENT:Ljava/lang/String; = "metok_client"

.field private static final EXTRA_MAGIC:Ljava/lang/String; = "metok_magic"

.field private static final EXTRA_PROVIDER:Ljava/lang/String; = "metok_provider"

.field private static final MAGIC_METOK:Ljava/lang/String; = "metok"

.field private static final METOK_LP_PACKAGE:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final METOK_PROVIDER:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "MetokProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFused:Lcom/android/server/location/LocationProviderInterface;

.field private mGps:Lcom/android/server/location/LocationProviderInterface;

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mNlp:Lcom/android/server/location/LocationProviderInterface;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mProviderToCalled:Ljava/lang/String;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/location/MetokWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 54
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    .line 151
    new-instance v0, Lcom/android/server/location/MetokProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokProxy$1;-><init>(Lcom/android/server/location/MetokProxy;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "network"

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/android/server/location/MetokWatcher;

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/android/server/location/MetokWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MetokProxy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderProperties;

    .line 25
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/server/location/MetokProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 58
    .local v0, "proxy":Lcom/android/server/location/MetokProxy;
    invoke-direct {v0}, Lcom/android/server/location/MetokProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 59
    return-object v0

    .line 61
    :cond_c
    const-string v1, "MetokProxy"

    const-string v2, "failed to bind metok"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 7
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 254
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 255
    return-void

    .line 258
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v0, :cond_1a

    .line 259
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_37

    .line 260
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v0, :cond_2e

    .line 261
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_37

    .line 262
    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v0, :cond_37

    .line 263
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 267
    :cond_37
    :goto_37
    goto :goto_55

    .line 265
    :catch_38
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MetokProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locaiton request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    .line 269
    return-void
.end method


# virtual methods
.method public canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    if-nez p2, :cond_6

    goto :goto_66

    .line 93
    :cond_6
    const-string/jumbo v1, "passive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 94
    return v0

    .line 97
    :cond_10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_15
    const-string/jumbo v2, "metok_magic"

    const-string/jumbo v3, "metok"

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 100
    const-string/jumbo v2, "metok_client"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 101
    const-string/jumbo v2, "metok_provider"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_4e

    .line 105
    nop

    .line 107
    const-string/jumbo v2, "metok_takeover"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/MetokProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 108
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_4d
    return v0

    .line 102
    :catch_4e
    move-exception v2

    .line 103
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create bundle error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0

    .line 90
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_66
    :goto_66
    return v0
.end method

.method public disable()V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 232
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    .line 233
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 234
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v0, :cond_e

    return-void

    .line 237
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 243
    :goto_11
    goto :goto_37

    .line 240
    :catch_12
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_37

    .line 238
    :catch_30
    move-exception v1

    .line 239
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MetokProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 244
    :goto_37
    return-void

    .line 232
    .end local v0    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 302
    const-string v0, "REMOTE SERVICE"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 303
    const-string v0, " name="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 304
    const-string v0, " pkg="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v1}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 305
    const-string v0, " version="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v2}, Lcom/android/server/location/MetokWatcher;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 306
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 308
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 309
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v0, :cond_51

    .line 310
    const-string/jumbo v1, "service down (null)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    return-void

    .line 313
    :cond_51
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 316
    :try_start_54
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5b} :catch_80
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_8c

    .line 320
    :catch_5c
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "service down (Exception)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_8d

    .line 317
    :catch_80
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "service down (RemoteException)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string v2, "MetokProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8c
    nop

    .line 325
    :goto_8d
    return-void
.end method

.method public enable()V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 214
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    .line 215
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 216
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v0, :cond_e

    return-void

    .line 219
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    .line 225
    :goto_11
    goto :goto_37

    .line 222
    :catch_12
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_37

    .line 220
    :catch_30
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MetokProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_11

    .line 226
    :goto_37
    return-void

    .line 214
    .end local v0    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v0

    return-object v1

    .line 207
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 329
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 330
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 333
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v2

    .line 336
    :catch_d
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_32

    .line 334
    :catch_2b
    move-exception v2

    .line 335
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 340
    :goto_32
    return v1
.end method

.method public getStatusUpdateTime()J
    .registers 8

    .line 345
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 346
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 349
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J

    move-result-wide v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return-wide v3

    .line 352
    :catch_e
    move-exception v3

    .line 354
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "MetokProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v6}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_33

    .line 350
    :catch_2c
    move-exception v3

    .line 351
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MetokProxy"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v3    # "e":Landroid/os/RemoteException;
    nop

    .line 356
    :goto_33
    return-wide v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 250
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 116
    if-nez p1, :cond_4

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_20

    const-string/jumbo v1, "metok_magic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 122
    sget-boolean v1, Lcom/android/server/location/MetokProxy;->D:Z

    if-eqz v1, :cond_1f

    const-string v1, "MetokProxy"

    const-string/jumbo v2, "location from metok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1f
    return-object p1

    .line 127
    :cond_20
    return-object p1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 361
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 362
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 365
    :cond_8
    :try_start_8
    invoke-interface {v0, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v2

    .line 368
    :catch_d
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_32

    .line 366
    :catch_2b
    move-exception v2

    .line 367
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 372
    :goto_32
    return v1
.end method

.method public setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2
    .param p1, "fused"    # Lcom/android/server/location/LocationProviderInterface;

    .line 81
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    .line 82
    return-void
.end method

.method public setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2
    .param p1, "gps"    # Lcom/android/server/location/LocationProviderInterface;

    .line 77
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    .line 78
    return-void
.end method

.method public setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 2
    .param p1, "nlp"    # Lcom/android/server/location/LocationProviderInterface;

    .line 73
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    .line 74
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 9
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 273
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 275
    iput-object p2, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    .line 276
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_44

    .line 277
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    .line 278
    .local v0, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v0, :cond_12

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 280
    return-void

    .line 283
    :cond_12
    const/4 v1, 0x0

    .line 285
    .local v1, "exception":Z
    :try_start_13
    invoke-interface {v0, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    .line 293
    :goto_16
    goto :goto_3e

    .line 289
    :catch_17
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, 0x1

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3e

    .line 286
    :catch_36
    move-exception v2

    .line 287
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v1, 0x1

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_16

    .line 295
    :goto_3e
    if-eqz v1, :cond_43

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 298
    :cond_43
    return-void

    .line 276
    .end local v0    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v1    # "exception":Z
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public updateStatus(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 131
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-nez v0, :cond_a

    .line 132
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->enable()V

    goto :goto_13

    .line 133
    :cond_a
    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-eqz v0, :cond_13

    .line 134
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->disable()V

    .line 136
    :cond_13
    :goto_13
    return-void
.end method

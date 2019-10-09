.class Lcom/android/server/pm/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/pm/PackageManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static deleteApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "keepData"    # Z

    .line 62
    const/4 v0, 0x2

    .line 63
    .local v0, "flags":I
    if-eqz p2, :cond_5

    .line 64
    or-int/lit8 v0, v0, 0x1

    .line 66
    :cond_5
    new-instance v1, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$1;)V

    .line 68
    .local v1, "obs":Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
    :try_start_b
    new-instance v2, Landroid/content/pm/VersionedPackage;

    const/4 v3, -0x1

    invoke-direct {v2, p1, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v1, v3, v0}, Landroid/content/pm/IPackageManager;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 70
    monitor-enter v1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_16} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_25

    .line 71
    :goto_16
    :try_start_16
    iget-boolean v2, v1, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_22

    if-nez v2, :cond_20

    .line 73
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_22

    .line 75
    :goto_1d
    goto :goto_16

    .line 74
    :catch_1e
    move-exception v2

    goto :goto_1d

    .line 77
    :cond_20
    :try_start_20
    monitor-exit v1

    goto :goto_2e

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_25} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 80
    :catch_25
    move-exception v2

    .line 81
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_2f

    .line 78
    :catch_2a
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_2e
    nop

    .line 83
    :goto_2f
    iget-boolean v2, v1, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    return v2
.end method

.method private static doAandonSession(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionId"    # I

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 181
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 183
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    move-object v1, v2

    .line 184
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_18
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 185
    const/4 v2, 0x1

    .line 189
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 185
    return v2

    .line 189
    :catchall_16
    move-exception v2

    goto :goto_26

    .line 186
    :catch_18
    move-exception v2

    .line 187
    .local v2, "e":Ljava/io/IOException;
    :try_start_19
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string v4, "doAandonSession failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 189
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 190
    nop

    .line 191
    const/4 v2, 0x0

    return v2

    .line 189
    :goto_26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static doCommitSession(Landroid/content/Context;ILandroid/content/IntentSender;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionId"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 166
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 168
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    move-object v1, v2

    .line 169
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_18
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 170
    const/4 v2, 0x1

    .line 174
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 170
    return v2

    .line 174
    :catchall_16
    move-exception v2

    goto :goto_26

    .line 171
    :catch_18
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    :try_start_19
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string v4, "doCommitSession failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    nop

    .line 176
    const/4 v2, 0x0

    return v2

    .line 174
    :goto_26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static doCreateSession(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 130
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 132
    .local v1, "sessionId":I
    :try_start_9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_f

    move v1, v2

    .line 136
    goto :goto_17

    .line 134
    :catch_f
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string v4, "doCreateSession failed: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :goto_17
    return v1
.end method

.method private static doWriteSession(Landroid/content/Context;Ljava/io/File;I)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "sessionId"    # I

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 142
    .local v0, "packageInstaller":Landroid/content/pm/PackageInstaller;
    const/4 v1, 0x0

    .line 143
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v2, 0x0

    .line 145
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v3, 0x10000000

    :try_start_c
    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 147
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v3

    .line 149
    const-string v5, "base.apk"

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object v4, v1

    move-object v10, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;Z)Landroid/os/ParcelFileDescriptor;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2e} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2e} :catch_3a
    .catchall {:try_start_c .. :try_end_2e} :catchall_38

    .line 150
    const/4 v3, 0x1

    .line 156
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    if-eqz v1, :cond_37

    .line 158
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    .line 150
    :cond_37
    return v3

    .line 156
    :catchall_38
    move-exception v3

    goto :goto_54

    .line 153
    :catch_3a
    move-exception v3

    .line 156
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    if-eqz v1, :cond_52

    .line 158
    :goto_40
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    goto :goto_52

    .line 151
    :catch_44
    move-exception v3

    .line 152
    .local v3, "e":Ljava/io/IOException;
    :try_start_45
    sget-object v4, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string v5, "doWriteSession failed: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_38

    .line 156
    .end local v3    # "e":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    if-eqz v1, :cond_52

    goto :goto_40

    .line 161
    :cond_52
    :goto_52
    const/4 v3, 0x0

    return v3

    .line 156
    :goto_54
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 157
    if-eqz v1, :cond_5c

    .line 158
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    :cond_5c
    throw v3
.end method

.method static installAppList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    .local p1, "apkFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "installedResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 89
    return-object v0

    .line 91
    :cond_c
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .local v1, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;-><init>(I)V

    .line 94
    .local v2, "receiver":Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 95
    .local v4, "apkFile":Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerProxy;->makeSessionParams(Ljava/io/File;)Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v5

    .line 96
    .local v5, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-static {p0, v5}, Lcom/android/server/pm/PackageManagerProxy;->doCreateSession(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v6

    .line 97
    .local v6, "sessionId":I
    if-eqz v6, :cond_4b

    .line 98
    invoke-static {p0, v4, v6}, Lcom/android/server/pm/PackageManagerProxy;->doWriteSession(Landroid/content/Context;Ljava/io/File;I)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 99
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/android/server/pm/PackageManagerProxy;->doCommitSession(Landroid/content/Context;ILandroid/content/IntentSender;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 100
    invoke-virtual {v1, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    .line 102
    :cond_48
    invoke-static {p0, v6}, Lcom/android/server/pm/PackageManagerProxy;->doAandonSession(Landroid/content/Context;I)Z

    .line 105
    .end local v4    # "apkFile":Ljava/io/File;
    .end local v5    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v6    # "sessionId":I
    :cond_4b
    :goto_4b
    goto :goto_1e

    .line 107
    :cond_4c
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 108
    .local v3, "size":I
    :goto_50
    if-lez v3, :cond_cd

    .line 109
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerProxy$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    .line 110
    .local v4, "result":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.SESSION_ID"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 111
    .local v5, "sessionId":I
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_7a

    .line 112
    sget-object v6, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InstallApp received invalid sessionId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_50

    .line 115
    :cond_7a
    const-string v6, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 117
    .local v7, "status":I
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz v7, :cond_ca

    .line 119
    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "errorMsg":Ljava/lang/String;
    sget-object v9, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InstallApp failed for id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " msg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v8    # "errorMsg":Ljava/lang/String;
    :cond_ca
    add-int/lit8 v3, v3, -0x1

    .line 124
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "sessionId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "status":I
    goto :goto_50

    .line 125
    :cond_cd
    return-object v0
.end method

.method private static makeSessionParams(Ljava/io/File;)Landroid/content/pm/PackageInstaller$SessionParams;
    .registers 8
    .param p0, "apkFile"    # Ljava/io/File;

    .line 195
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 196
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 197
    const-string v2, "android"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x0

    move-object v3, v2

    .line 201
    .local v3, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_11
    invoke-static {p0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_11 .. :try_end_15} :catch_31

    .line 205
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    nop

    .line 206
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 207
    iget v3, v1, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 209
    :try_start_20
    invoke-static {v1, v2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_28

    .line 212
    goto :goto_30

    .line 210
    :catch_28
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    :goto_30
    return-object v0

    .line 202
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_31
    move-exception v1

    .line 203
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    sget-object v4, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parse packageLite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    return-object v2
.end method

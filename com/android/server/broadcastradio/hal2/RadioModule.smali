.class Lcom/android/server/broadcastradio/hal2/RadioModule;
.super Ljava/lang/Object;
.source "RadioModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.module"


# instance fields
.field public final mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

.field private final mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;


# direct methods
.method private constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .registers 4
    .param p1, "service"    # Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .param p2, "properties"    # Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    .line 54
    return-void
.end method

.method static synthetic lambda$addAnnouncementListener$3(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .registers 4
    .param p0, "halResult"    # Landroid/util/MutableInt;
    .param p1, "hwCloseHandle"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p2, "result"    # I
    .param p3, "closeHnd"    # Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    .line 119
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 120
    iput-object p3, p1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public static synthetic lambda$getImage$4(Lcom/android/server/broadcastradio/hal2/RadioModule;I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getImage(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$openSession$2(Lcom/android/server/broadcastradio/hal2/Mutable;Landroid/util/MutableInt;ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .registers 4
    .param p0, "hwSession"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "halResult"    # Landroid/util/MutableInt;
    .param p2, "result"    # I
    .param p3, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 89
    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 90
    iput p2, p1, Landroid/util/MutableInt;->value:I

    .line 91
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$0(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .registers 3
    .param p0, "amfmConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 63
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 64
    :cond_4
    return-void
.end method

.method static synthetic lambda$tryLoadingModule$1(Lcom/android/server/broadcastradio/hal2/Mutable;ILjava/util/ArrayList;)V
    .registers 3
    .param p0, "dabConfig"    # Lcom/android/server/broadcastradio/hal2/Mutable;
    .param p1, "result"    # I
    .param p2, "config"    # Ljava/util/ArrayList;

    .line 68
    if-nez p1, :cond_4

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    .line 69
    :cond_4
    return-void
.end method

.method public static tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;
    .registers 9
    .param p0, "idx"    # I
    .param p1, "fqName"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object v1

    .line 59
    .local v1, "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    if-nez v1, :cond_8

    return-object v0

    .line 61
    :cond_8
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 62
    .local v2, "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;

    invoke-direct {v4, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$Ps8Vj3Q777LToAxaWE_cyahZ1Is;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v3, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 66
    new-instance v3, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v3}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 67
    .local v3, "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;

    invoke-direct {v4, v3}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$8XDiZOu4emnvYISlRsAgvceyPhA;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v1, v4}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 71
    nop

    .line 72
    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    iget-object v6, v3, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 71
    invoke-static {p0, p1, v4, v5, v6}, Lcom/android/server/broadcastradio/hal2/Convert;->propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object v4

    .line 74
    .local v4, "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    new-instance v5, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {v5, v1, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_3a

    return-object v5

    .line 75
    .end local v1    # "service":Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .end local v2    # "amfmConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;>;"
    .end local v3    # "dabConfig":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Ljava/util/List<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;>;"
    .end local v4    # "prop":Landroid/hardware/radio/RadioManager$ModuleProperties;
    :catch_3a
    move-exception v1

    .line 76
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "BcRadio2Srv.module"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load module "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 10
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "enabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 104
    .local v3, "type":I
    int-to-byte v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v3    # "type":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 107
    :cond_16
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 108
    .local v1, "halResult":Landroid/util/MutableInt;
    new-instance v2, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v2}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 109
    .local v2, "hwCloseHandle":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ICloseHandle;>;"
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    invoke-direct {v3, p0, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/IAnnouncementListener;)V

    .line 117
    .local v3, "hwListener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v4

    .line 118
    :try_start_29
    iget-object v5, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v6, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;

    invoke-direct {v6, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$yXMJGeC9UEM7jTA1nM5DH22CG8U;-><init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    invoke-interface {v5, v0, v3, v6}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 122
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_41

    .line 123
    const-string v4, "addAnnouncementListener"

    iget v5, v1, Landroid/util/MutableInt;->value:I

    invoke-static {v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 125
    new-instance v4, Lcom/android/server/broadcastradio/hal2/RadioModule$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule$2;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V

    return-object v4

    .line 122
    :catchall_41
    move-exception v5

    :try_start_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v5
.end method

.method getImage(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "id"    # I

    .line 137
    if-eqz p1, :cond_40

    .line 140
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v0

    .line 141
    :try_start_5
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$WfmM4W7QS3OnfFwUksITHnpM74g;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;I)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 142
    .local v1, "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 143
    .local v2, "rawImage":[B
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2d

    .line 144
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 146
    .end local v1    # "rawList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v4    # "i":I
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_3d

    move-object v0, v2

    .line 148
    .end local v2    # "rawImage":[B
    .local v0, "rawImage":[B
    if-eqz v0, :cond_3b

    array-length v1, v0

    if-nez v1, :cond_35

    goto :goto_3b

    .line 150
    :cond_35
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 148
    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    return-object v1

    .line 146
    .end local v0    # "rawImage":[B
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    .line 137
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image ID is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;
    .registers 8
    .param p1, "userCb"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerCallback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/ITunerCallback;

    invoke-direct {v0, v1}, Lcom/android/server/broadcastradio/hal2/TunerCallback;-><init>(Landroid/hardware/radio/ITunerCallback;)V

    .line 84
    .local v0, "cb":Lcom/android/server/broadcastradio/hal2/TunerCallback;
    new-instance v1, Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/hal2/Mutable;-><init>()V

    .line 85
    .local v1, "hwSession":Lcom/android/server/broadcastradio/hal2/Mutable;, "Lcom/android/server/broadcastradio/hal2/Mutable<Landroid/hardware/broadcastradio/V2_0/ITunerSession;>;"
    new-instance v2, Landroid/util/MutableInt;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/MutableInt;-><init>(I)V

    .line 87
    .local v2, "halResult":Landroid/util/MutableInt;
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    monitor-enter v3

    .line 88
    :try_start_19
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mService:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    new-instance v5, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;

    invoke-direct {v5, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$sutdDRJCfrrZR0pspDNZ8ndK1TY;-><init>(Lcom/android/server/broadcastradio/hal2/Mutable;Landroid/util/MutableInt;)V

    invoke-interface {v4, v0, v5}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 92
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_3d

    .line 94
    const-string/jumbo v3, "openSession"

    iget v4, v2, Landroid/util/MutableInt;->value:I

    invoke-static {v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 95
    iget-object v3, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v3, Lcom/android/server/broadcastradio/hal2/TunerSession;

    iget-object v4, v1, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Lcom/android/server/broadcastradio/hal2/TunerCallback;)V

    return-object v3

    .line 92
    :catchall_3d
    move-exception v4

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v4
.end method

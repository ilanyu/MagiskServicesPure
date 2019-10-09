.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;,
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc2000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 114
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 125
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 132
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 138
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 149
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 159
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 164
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 169
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 174
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p4, "permissionManager"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 206
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 207
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 219
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    .line 220
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 221
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 95
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1492
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .registers 7

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1346
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1347
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1349
    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1350
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1351
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1353
    :cond_42
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1354
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1355
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1357
    :cond_61
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/default-permissions"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1358
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1359
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1362
    :cond_80
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.embedded"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1363
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, "etc/default-permissions"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1364
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1365
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1368
    :cond_ae
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v2, 0x0

    goto :goto_be

    :cond_b6
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_be
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1121
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1122
    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1123
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_12

    .line 1124
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1126
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1062
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1063
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1062
    const v3, 0xc2000

    const/4 v5, 0x0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1065
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_22

    goto :goto_36

    .line 1068
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1069
    return-object v1

    .line 1071
    :cond_2d
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 1066
    :cond_36
    :goto_36
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 1076
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1076
    const v2, 0xc2000

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v0

    .line 1078
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1079
    return-object v1

    .line 1081
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1082
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2c

    .line 1083
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1084
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1086
    .local v5, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_29

    .line 1087
    return-object v5

    .line 1082
    .end local v4    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1090
    .end local v3    # "i":I
    :cond_2c
    return-object v1
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v0, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    array-length v2, p1

    const/4 v3, 0x0

    move v10, v3

    :goto_14
    if-ge v10, v2, :cond_44

    aget-object v11, p1, v10

    .line 1101
    .local v11, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 1104
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const v6, 0xc2000

    const/4 v8, 0x0

    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1103
    move-object v4, v1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1106
    .local v3, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_38

    .line 1107
    goto :goto_41

    .line 1110
    :cond_38
    invoke-direct {p0, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1111
    .local v4, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_41

    .line 1112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v3    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_41
    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 1116
    :cond_44
    return-object v0
.end method

.method private getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1135
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object v1, v0

    nop

    :cond_15
    return-object v1

    .line 1138
    :cond_16
    return-object v1
.end method

.method private grantAllRuntimePermissions(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 289
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting all runtime permissions for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 291
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 293
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_39

    .line 294
    goto :goto_24

    .line 296
    :cond_39
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 297
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_24

    .line 298
    :cond_3d
    return-void
.end method

.method private grantDefaultPermissionExceptions(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 1310
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1317
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v1, :cond_13

    .line 1318
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1320
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_60

    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1324
    .local v1, "exceptionCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1e
    if-ge v0, v1, :cond_5f

    .line 1325
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1326
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1327
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1328
    .local v6, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 1329
    .local v7, "permissionGrantCount":I
    move-object v8, v3

    move v3, v2

    .local v3, "j":I
    .local v8, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3a
    if-ge v3, v7, :cond_5b

    .line 1330
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1331
    .local v9, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    if-nez v8, :cond_4b

    .line 1332
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v10

    goto :goto_4e

    .line 1334
    :cond_4b
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 1336
    :goto_4e
    iget-object v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-boolean v10, v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    invoke-direct {p0, v5, v8, v10, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1329
    .end local v9    # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1324
    .end local v3    # "j":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v7    # "permissionGrantCount":I
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    move-object v3, v8

    goto :goto_1e

    .line 1341
    .end local v0    # "i":I
    .end local v8    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5f
    return-void

    .line 1320
    .end local v1    # "exceptionCount":I
    .end local v3    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V
    .registers 6
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 937
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 939
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 940
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 942
    :cond_26
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 6
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 859
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 860
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 861
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 862
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 864
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 865
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 866
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 867
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 869
    .end local v0    # "isPhonePermFixed":Z
    :cond_2c
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 873
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 874
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 875
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 876
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 877
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 878
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 879
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 881
    :cond_24
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "useOpenWifiPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 885
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 886
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 888
    :cond_b
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .registers 95
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 322
    move/from16 v2, p1

    const-string v0, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default platform handlers for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 333
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 334
    .local v0, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 335
    .local v4, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 336
    .local v5, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 337
    .local v6, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v7, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 338
    .local v7, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v8, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 339
    .local v8, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v9, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 340
    .local v9, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_711

    .line 342
    if-eqz v4, :cond_33

    .line 343
    invoke-interface {v4, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v10

    goto :goto_34

    :cond_33
    const/4 v10, 0x0

    .line 344
    .local v10, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_34
    if-eqz v0, :cond_3b

    .line 345
    invoke-interface {v0, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_3c

    :cond_3b
    const/4 v11, 0x0

    .line 346
    .local v11, "locationPackageNames":[Ljava/lang/String;
    :goto_3c
    if-eqz v5, :cond_43

    .line 347
    invoke-interface {v5, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_44

    :cond_43
    const/4 v12, 0x0

    .line 348
    .local v12, "smsAppPackageNames":[Ljava/lang/String;
    :goto_44
    if-eqz v6, :cond_4b

    .line 349
    invoke-interface {v6, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v13

    goto :goto_4c

    :cond_4b
    const/4 v13, 0x0

    .line 350
    .local v13, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4c
    if-eqz v7, :cond_53

    .line 351
    invoke-interface {v7, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v14

    goto :goto_54

    :cond_53
    const/4 v14, 0x0

    .line 352
    .local v14, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_54
    if-eqz v8, :cond_5b

    .line 353
    invoke-interface {v8, v2}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v15

    goto :goto_5c

    :cond_5b
    const/4 v15, 0x0

    .line 354
    .local v15, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    :goto_5c
    if-eqz v9, :cond_65

    .line 355
    const-string v3, "com.android.contacts"

    invoke-interface {v9, v3, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    .line 356
    .local v3, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_66
    if-eqz v9, :cond_71

    .line 357
    move-object/from16 v17, v0

    const-string v0, "com.android.calendar"

    .line 357
    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v17, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-interface {v9, v0, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_74

    .line 357
    .end local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_71
    move-object/from16 v17, v0

    .line 357
    .end local v0    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const/4 v0, 0x0

    .line 360
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_74
    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 360
    .end local v4    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v18, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v19, v5

    const/4 v5, 0x2

    .line 360
    .end local v5    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "installerPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 363
    .local v5, "installerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v20, v4

    const/4 v4, 0x1

    .line 363
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .local v20, "installerPackageName":Ljava/lang/String;
    if-eqz v5, :cond_96

    .line 364
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_96

    .line 365
    move-object/from16 v21, v6

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 365
    .end local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v21, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    invoke-direct {v1, v5, v6, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_98

    .line 369
    .end local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_96
    move-object/from16 v21, v6

    .line 369
    .end local v6    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :goto_98
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v6, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "verifierPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 372
    .local v6, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v22, v4

    .line 372
    .end local v4    # "verifierPackageName":Ljava/lang/String;
    .local v22, "verifierPackageName":Ljava/lang/String;
    if-eqz v6, :cond_c1

    .line 373
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_c1

    .line 374
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 375
    .end local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .local v23, "installerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 376
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_c3

    .line 380
    .end local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_c1
    move-object/from16 v23, v5

    .line 380
    .end local v5    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_c3
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "setupWizardPackageName":Ljava/lang/String;
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 383
    .local v5, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_ed

    .line 384
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_ed

    .line 385
    move-object/from16 v24, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 385
    .end local v4    # "setupWizardPackageName":Ljava/lang/String;
    .local v24, "setupWizardPackageName":Ljava/lang/String;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 386
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 387
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 388
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_ef

    .line 392
    .end local v24    # "setupWizardPackageName":Ljava/lang/String;
    .restart local v4    # "setupWizardPackageName":Ljava/lang/String;
    :cond_ed
    move-object/from16 v24, v4

    .line 392
    .end local v4    # "setupWizardPackageName":Ljava/lang/String;
    .restart local v24    # "setupWizardPackageName":Ljava/lang/String;
    :goto_ef
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v25, v5

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    .line 392
    .end local v5    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .local v25, "setupPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v4, "cameraIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 395
    .local v5, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_116

    .line 396
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_116

    .line 397
    move-object/from16 v26, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 397
    .end local v4    # "cameraIntent":Landroid/content/Intent;
    .local v26, "cameraIntent":Landroid/content/Intent;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 398
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 399
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_118

    .line 403
    .end local v26    # "cameraIntent":Landroid/content/Intent;
    .restart local v4    # "cameraIntent":Landroid/content/Intent;
    :cond_116
    move-object/from16 v26, v4

    .line 403
    .end local v4    # "cameraIntent":Landroid/content/Intent;
    .restart local v26    # "cameraIntent":Landroid/content/Intent;
    :goto_118
    const-string/jumbo v4, "media"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 405
    .local v4, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_131

    .line 406
    move-object/from16 v27, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 406
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .local v27, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v28, v6

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 407
    .end local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .local v28, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_136

    .line 411
    .end local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_131
    move-object/from16 v27, v5

    move-object/from16 v28, v6

    const/4 v6, 0x1

    .line 411
    .end local v5    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :goto_136
    const-string v5, "downloads"

    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 413
    .local v5, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_146

    .line 414
    move-object/from16 v29, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 414
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .local v29, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v5, v4, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_148

    .line 418
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :cond_146
    move-object/from16 v29, v4

    .line 418
    .end local v4    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    :goto_148
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v4, "downloadsUiIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 421
    .local v6, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_166

    .line 422
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_166

    .line 423
    move-object/from16 v30, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 423
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .local v30, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v31, v5

    const/4 v5, 0x1

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 423
    .end local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .local v31, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_16b

    .line 427
    .end local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_166
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    const/4 v5, 0x1

    .line 427
    .end local v4    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v5    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    :goto_16b
    const-string v4, "com.android.externalstorage.documents"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 429
    .local v4, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_17b

    .line 430
    move-object/from16 v32, v6

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 430
    .end local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .local v32, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v6, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_17d

    .line 434
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :cond_17b
    move-object/from16 v32, v6

    .line 434
    .end local v6    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    :goto_17d
    const-string v6, "com.android.defcontainer"

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 436
    .local v6, "containerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_18d

    .line 437
    move-object/from16 v33, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 437
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v33, "storagePackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_18f

    .line 441
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_18d
    move-object/from16 v33, v4

    .line 441
    .end local v4    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :goto_18f
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.credentials.INSTALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v4, "certInstallerIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 444
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1ad

    .line 445
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_1ad

    .line 446
    move-object/from16 v34, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 446
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .local v34, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v35, v6

    const/4 v6, 0x1

    invoke-direct {v1, v5, v4, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 446
    .end local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .local v35, "containerPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_1b1

    .line 450
    .end local v34    # "certInstallerIntent":Landroid/content/Intent;
    .end local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1ad
    move-object/from16 v34, v4

    move-object/from16 v35, v6

    .line 450
    .end local v4    # "certInstallerIntent":Landroid/content/Intent;
    .end local v6    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v34    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1b1
    if-nez v13, :cond_1c7

    .line 451
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v4, "dialerIntent":Landroid/content/Intent;
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 454
    .local v6, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1c3

    .line 455
    invoke-direct {v1, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 457
    .end local v4    # "dialerIntent":Landroid/content/Intent;
    .end local v6    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1c3
    nop

    .line 467
    move-object/from16 v37, v5

    goto :goto_1e3

    .line 458
    :cond_1c7
    array-length v4, v13

    const/4 v6, 0x0

    :goto_1c9
    if-ge v6, v4, :cond_1e1

    move/from16 v36, v4

    aget-object v4, v13, v6

    .line 459
    .local v4, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v37, v5

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 460
    .local v5, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .local v37, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_1da

    .line 461
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 458
    .end local v4    # "dialerAppPackageName":Ljava/lang/String;
    .end local v5    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1da
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v36

    move-object/from16 v5, v37

    goto :goto_1c9

    .line 467
    .end local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .local v5, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_1e1
    move-object/from16 v37, v5

    .line 467
    .end local v5    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_1e3
    if-eqz v14, :cond_1fc

    .line 468
    array-length v4, v14

    const/4 v5, 0x0

    :goto_1e7
    if-ge v5, v4, :cond_1fc

    aget-object v6, v14, v5

    .line 469
    .local v6, "simCallManagerPackageName":Ljava/lang/String;
    nop

    .line 470
    move/from16 v38, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 471
    .local v4, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_1f7

    .line 472
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 468
    .end local v4    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "simCallManagerPackageName":Ljava/lang/String;
    :cond_1f7
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v38

    goto :goto_1e7

    .line 479
    :cond_1fc
    if-eqz v15, :cond_215

    .line 480
    array-length v4, v15

    const/4 v5, 0x0

    :goto_200
    if-ge v5, v4, :cond_215

    aget-object v6, v15, v5

    .line 481
    .local v6, "useOpenWifiPackageName":Ljava/lang/String;
    nop

    .line 482
    move/from16 v39, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 483
    .local v4, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_210

    .line 484
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 480
    .end local v4    # "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "useOpenWifiPackageName":Ljava/lang/String;
    :cond_210
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v39

    goto :goto_200

    .line 491
    :cond_215
    if-nez v12, :cond_22d

    .line 492
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v4, "smsIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.APP_MESSAGING"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 496
    .local v5, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_22c

    .line 497
    invoke-direct {v1, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 499
    .end local v4    # "smsIntent":Landroid/content/Intent;
    .end local v5    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_22c
    goto :goto_243

    .line 500
    :cond_22d
    array-length v4, v12

    const/4 v5, 0x0

    :goto_22f
    if-ge v5, v4, :cond_243

    aget-object v6, v12, v5

    .line 501
    .local v6, "smsPackageName":Ljava/lang/String;
    move/from16 v40, v4

    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 502
    .local v4, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_23e

    .line 503
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Landroid/content/pm/PackageParser$Package;I)V

    .line 500
    .end local v4    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "smsPackageName":Ljava/lang/String;
    :cond_23e
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v40

    goto :goto_22f

    .line 509
    :cond_243
    :goto_243
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v4, "cbrIntent":Landroid/content/Intent;
    nop

    .line 511
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 512
    .local v5, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_25c

    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_25c

    .line 513
    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 517
    :cond_25c
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v41, v4

    const-string v4, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    .line 517
    .end local v4    # "cbrIntent":Landroid/content/Intent;
    .local v41, "cbrIntent":Landroid/content/Intent;
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 518
    .local v4, "carrierProvIntent":Landroid/content/Intent;
    nop

    .line 519
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 520
    .local v6, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_27e

    .line 521
    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_27e

    .line 522
    move-object/from16 v42, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 522
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .local v42, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v43, v5

    const/4 v5, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 522
    .end local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .local v43, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_282

    .line 526
    .end local v42    # "carrierProvIntent":Landroid/content/Intent;
    .end local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    :cond_27e
    move-object/from16 v42, v4

    move-object/from16 v43, v5

    .line 526
    .end local v4    # "carrierProvIntent":Landroid/content/Intent;
    .end local v5    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v42    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    :goto_282
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, "calendarIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 530
    .local v5, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_2a7

    .line 531
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2a7

    .line 532
    move-object/from16 v44, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 532
    .end local v4    # "calendarIntent":Landroid/content/Intent;
    .local v44, "calendarIntent":Landroid/content/Intent;
    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 533
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v5, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_2a9

    .line 537
    .end local v44    # "calendarIntent":Landroid/content/Intent;
    .restart local v4    # "calendarIntent":Landroid/content/Intent;
    :cond_2a7
    move-object/from16 v44, v4

    .line 537
    .end local v4    # "calendarIntent":Landroid/content/Intent;
    .restart local v44    # "calendarIntent":Landroid/content/Intent;
    :goto_2a9
    const-string v4, "com.android.calendar"

    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 539
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2c6

    .line 540
    move-object/from16 v45, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 540
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .local v45, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 541
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v46, v6

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 543
    .end local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .local v46, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_2ca

    .line 547
    .end local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2c6
    move-object/from16 v45, v5

    move-object/from16 v46, v6

    .line 547
    .end local v5    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    :goto_2ca
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 549
    .local v5, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 550
    .local v6, "calendarSyncAdapterCount":I
    const/16 v16, 0x0

    .line 550
    .local v16, "i":I
    :goto_2d4
    move/from16 v47, v16

    .line 550
    .end local v16    # "i":I
    .local v47, "i":I
    move-object/from16 v48, v0

    move/from16 v0, v47

    if-ge v0, v6, :cond_2ff

    .line 551
    .end local v47    # "i":I
    .local v0, "i":I
    .local v48, "calendarSyncAdapterPackages":[Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v49, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 552
    .local v4, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v49, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_2f4

    .line 553
    move-object/from16 v50, v5

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 553
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v50, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 553
    .end local v4    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_2f6

    .line 550
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2f4
    move-object/from16 v50, v5

    .line 550
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_2f6
    add-int/lit8 v16, v0, 0x1

    .line 550
    .end local v0    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v48

    move-object/from16 v4, v49

    move-object/from16 v5, v50

    goto :goto_2d4

    .line 558
    .end local v16    # "i":I
    .end local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v4, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_2ff
    move-object/from16 v49, v4

    move-object/from16 v50, v5

    .line 558
    .end local v4    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "contactsIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 562
    .local v4, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_325

    .line 563
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_325

    .line 564
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 565
    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 569
    :cond_325
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 571
    .local v5, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    move-object/from16 v51, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 572
    .local v0, "contactsSyncAdapterCount":I
    .local v51, "contactsIntent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 572
    .restart local v16    # "i":I
    :goto_331
    move/from16 v52, v16

    .line 572
    .end local v16    # "i":I
    .local v52, "i":I
    move-object/from16 v53, v3

    move/from16 v3, v52

    if-ge v3, v0, :cond_35c

    .line 573
    .end local v52    # "i":I
    .local v3, "i":I
    .local v53, "contactsSyncAdapterPackages":[Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v54, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 574
    .local v0, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .local v54, "contactsSyncAdapterCount":I
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_351

    .line 575
    move-object/from16 v55, v4

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 575
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .local v55, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 575
    .end local v0    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    goto :goto_353

    .line 572
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_351
    move-object/from16 v55, v4

    .line 572
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :goto_353
    add-int/lit8 v16, v3, 0x1

    .line 572
    .end local v3    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v3, v53

    move/from16 v0, v54

    move-object/from16 v4, v55

    goto :goto_331

    .line 580
    .end local v16    # "i":I
    .end local v54    # "contactsSyncAdapterCount":I
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "contactsSyncAdapterCount":I
    .restart local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_35c
    move/from16 v54, v0

    move-object/from16 v55, v4

    .line 580
    .end local v0    # "contactsSyncAdapterCount":I
    .end local v4    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v54    # "contactsSyncAdapterCount":I
    .restart local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    const-string v0, "com.android.contacts"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 582
    .local v0, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_378

    .line 583
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 585
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 587
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 591
    :cond_378
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v3, "deviceProvisionIntent":Landroid/content/Intent;
    nop

    .line 594
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 595
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_394

    .line 596
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_394

    .line 597
    move-object/from16 v56, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 597
    .end local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .local v56, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_396

    .line 601
    .end local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    :cond_394
    move-object/from16 v56, v0

    .line 601
    .end local v0    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    :goto_396
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v57, v3

    const-string v3, "android.intent.action.MAIN"

    .line 601
    .end local v3    # "deviceProvisionIntent":Landroid/content/Intent;
    .local v57, "deviceProvisionIntent":Landroid/content/Intent;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "mapsIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_MAPS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 605
    .local v3, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3b8

    .line 606
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3b8

    .line 607
    move-object/from16 v58, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 607
    .end local v0    # "mapsIntent":Landroid/content/Intent;
    .local v58, "mapsIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_3ba

    .line 611
    .end local v58    # "mapsIntent":Landroid/content/Intent;
    .restart local v0    # "mapsIntent":Landroid/content/Intent;
    :cond_3b8
    move-object/from16 v58, v0

    .line 611
    .end local v0    # "mapsIntent":Landroid/content/Intent;
    .restart local v58    # "mapsIntent":Landroid/content/Intent;
    :goto_3ba
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v59, v3

    const-string v3, "android.intent.action.MAIN"

    .line 611
    .end local v3    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .local v59, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, "galleryIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_GALLERY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 615
    .local v3, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3dc

    .line 616
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_3dc

    .line 617
    move-object/from16 v60, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 617
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    .local v60, "galleryIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_3de

    .line 621
    .end local v60    # "galleryIntent":Landroid/content/Intent;
    .restart local v0    # "galleryIntent":Landroid/content/Intent;
    :cond_3dc
    move-object/from16 v60, v0

    .line 621
    .end local v0    # "galleryIntent":Landroid/content/Intent;
    .restart local v60    # "galleryIntent":Landroid/content/Intent;
    :goto_3de
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v61, v3

    const-string v3, "android.intent.action.MAIN"

    .line 621
    .end local v3    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .local v61, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 625
    .local v3, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_405

    .line 626
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_405

    .line 627
    move-object/from16 v62, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 627
    .end local v0    # "emailIntent":Landroid/content/Intent;
    .local v62, "emailIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 628
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    goto :goto_407

    .line 632
    .end local v62    # "emailIntent":Landroid/content/Intent;
    .restart local v0    # "emailIntent":Landroid/content/Intent;
    :cond_405
    move-object/from16 v62, v0

    .line 632
    .end local v0    # "emailIntent":Landroid/content/Intent;
    .restart local v62    # "emailIntent":Landroid/content/Intent;
    :goto_407
    const/4 v0, 0x0

    .line 633
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v63, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 633
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v63, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v64, v3

    const/4 v3, 0x4

    .line 633
    .end local v3    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .local v64, "emailPackage":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v0, :cond_41b

    .line 636
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 638
    .end local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v3, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v63, v3

    .line 638
    .end local v3    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_41b
    if-nez v63, :cond_433

    .line 639
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v65, v0

    const-string v0, "android.intent.action.MAIN"

    .line 639
    .end local v0    # "defaultBrowserPackage":Ljava/lang/String;
    .local v65, "defaultBrowserPackage":Ljava/lang/String;
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 640
    .local v0, "browserIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v63

    .line 644
    .end local v0    # "browserIntent":Landroid/content/Intent;
    move-object/from16 v0, v63

    goto :goto_437

    .line 644
    .end local v65    # "defaultBrowserPackage":Ljava/lang/String;
    .local v0, "defaultBrowserPackage":Ljava/lang/String;
    :cond_433
    move-object/from16 v65, v0

    move-object/from16 v0, v63

    .line 644
    .end local v63    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v65    # "defaultBrowserPackage":Ljava/lang/String;
    :goto_437
    if-eqz v0, :cond_444

    .line 645
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_444

    .line 646
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 650
    :cond_444
    if-eqz v10, :cond_488

    .line 651
    array-length v3, v10

    move-object/from16 v66, v0

    const/4 v0, 0x0

    .line 651
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .local v66, "browserPackage":Landroid/content/pm/PackageParser$Package;
    :goto_44a
    if-ge v0, v3, :cond_485

    move/from16 v67, v3

    aget-object v3, v10, v0

    .line 652
    .local v3, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v68, v4

    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 654
    .local v4, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .local v68, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_47e

    .line 655
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_47e

    .line 656
    move-object/from16 v69, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 656
    .end local v3    # "voiceInteractPackageName":Ljava/lang/String;
    .local v69, "voiceInteractPackageName":Ljava/lang/String;
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 658
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 660
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 662
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 664
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 666
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 651
    .end local v4    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v69    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_47e
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v67

    move-object/from16 v4, v68

    goto :goto_44a

    .line 672
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .local v4, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :cond_485
    move-object/from16 v68, v4

    .line 672
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_48c

    .line 672
    .end local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :cond_488
    move-object/from16 v66, v0

    move-object/from16 v68, v4

    .line 672
    .end local v0    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    :goto_48c
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_4b3

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v0, "globalSearchIntent":Landroid/content/Intent;
    nop

    .line 676
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 678
    .local v3, "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_4b3

    .line 679
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_4b3

    .line 680
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v70, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 682
    .end local v0    # "globalSearchIntent":Landroid/content/Intent;
    .local v70, "globalSearchIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 688
    .end local v3    # "globalSearchPickerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v70    # "globalSearchIntent":Landroid/content/Intent;
    :cond_4b3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "voiceRecoIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 692
    .local v3, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_4d0

    .line 693
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_4d0

    .line 694
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 698
    :cond_4d0
    if-eqz v11, :cond_52d

    .line 699
    array-length v4, v11

    move-object/from16 v71, v0

    const/4 v0, 0x0

    .line 699
    .end local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .local v71, "voiceRecoIntent":Landroid/content/Intent;
    :goto_4d6
    if-ge v0, v4, :cond_528

    move-object/from16 v72, v3

    aget-object v3, v11, v0

    .line 700
    .local v3, "packageName":Ljava/lang/String;
    .local v72, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    move/from16 v73, v4

    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 701
    .local v4, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_51d

    .line 702
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_51d

    .line 703
    move-object/from16 v74, v3

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 703
    .end local v3    # "packageName":Ljava/lang/String;
    .local v74, "packageName":Ljava/lang/String;
    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 704
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 705
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 706
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 707
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 708
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v75, v5

    const/4 v5, 0x1

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 710
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v75, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 711
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 712
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 712
    .end local v4    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "packageName":Ljava/lang/String;
    goto :goto_51f

    .line 699
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_51d
    move-object/from16 v75, v5

    .line 699
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_51f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v72

    move/from16 v4, v73

    move-object/from16 v5, v75

    goto :goto_4d6

    .line 718
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .local v3, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_528
    move-object/from16 v72, v3

    move-object/from16 v75, v5

    .line 718
    .end local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_533

    .line 718
    .end local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :cond_52d
    move-object/from16 v71, v0

    move-object/from16 v72, v3

    move-object/from16 v75, v5

    .line 718
    .end local v0    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v3    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .restart local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :goto_533
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, "musicIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    new-instance v3, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/mpeg"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 724
    .local v3, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_560

    .line 725
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_560

    .line 726
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 730
    :cond_560
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v4, "homeIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v5, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-direct {v1, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 735
    .local v5, "homePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_588

    .line 736
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_588

    .line 737
    move-object/from16 v76, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 737
    .end local v0    # "musicIntent":Landroid/content/Intent;
    .local v76, "musicIntent":Landroid/content/Intent;
    move-object/from16 v77, v3

    const/4 v3, 0x0

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 737
    .end local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .local v77, "musicPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_58d

    .line 741
    .end local v76    # "musicIntent":Landroid/content/Intent;
    .end local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "musicIntent":Landroid/content/Intent;
    .restart local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    :cond_588
    move-object/from16 v76, v0

    move-object/from16 v77, v3

    const/4 v3, 0x0

    .line 741
    .end local v0    # "musicIntent":Landroid/content/Intent;
    .end local v3    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v76    # "musicIntent":Landroid/content/Intent;
    .restart local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    :goto_58d
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v78, v4

    const-string v4, "android.hardware.type.watch"

    .line 741
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .local v78, "homeIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f3

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "wearHomeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME_MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 749
    .local v3, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_5cf

    .line 750
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_5cf

    .line 751
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v79, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 753
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .local v79, "wearHomeIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 754
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 756
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_5d1

    .line 761
    .end local v79    # "wearHomeIntent":Landroid/content/Intent;
    .restart local v0    # "wearHomeIntent":Landroid/content/Intent;
    :cond_5cf
    move-object/from16 v79, v0

    .line 761
    .end local v0    # "wearHomeIntent":Landroid/content/Intent;
    .restart local v79    # "wearHomeIntent":Landroid/content/Intent;
    :goto_5d1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.fitness.TRACK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "trackIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 764
    .local v4, "trackPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_5f3

    .line 765
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_5f3

    .line 766
    move-object/from16 v80, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 766
    .end local v0    # "trackIntent":Landroid/content/Intent;
    .local v80, "trackIntent":Landroid/content/Intent;
    move-object/from16 v81, v3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 767
    .end local v3    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    .local v81, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 772
    .end local v4    # "trackPackage":Landroid/content/pm/PackageParser$Package;
    .end local v79    # "wearHomeIntent":Landroid/content/Intent;
    .end local v80    # "trackIntent":Landroid/content/Intent;
    .end local v81    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    :cond_5f3
    const-string v0, "com.android.printspooler"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 774
    .local v0, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_607

    .line 775
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_607

    .line 776
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 780
    :cond_607
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v3, "emergencyInfoIntent":Landroid/content/Intent;
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 783
    .local v4, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_62a

    .line 784
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_62a

    .line 785
    move-object/from16 v82, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 785
    .end local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .local v82, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v83, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 786
    .end local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    .local v83, "emergencyInfoIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_62e

    .line 790
    .end local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    .restart local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    :cond_62a
    move-object/from16 v82, v0

    move-object/from16 v83, v3

    .line 790
    .end local v0    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "emergencyInfoIntent":Landroid/content/Intent;
    .restart local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    :goto_62e
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 794
    .local v3, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_657

    .line 795
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_657

    .line 796
    move-object/from16 v84, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 796
    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .local v84, "nfcTagIntent":Landroid/content/Intent;
    move-object/from16 v85, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 797
    .end local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .local v85, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_65b

    .line 801
    .end local v84    # "nfcTagIntent":Landroid/content/Intent;
    .end local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    :cond_657
    move-object/from16 v84, v0

    move-object/from16 v85, v4

    .line 801
    .end local v0    # "nfcTagIntent":Landroid/content/Intent;
    .end local v4    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .restart local v84    # "nfcTagIntent":Landroid/content/Intent;
    .restart local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    :goto_65b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "storageManagerIntent":Landroid/content/Intent;
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 804
    .local v4, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_679

    .line 805
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_679

    .line 806
    move-object/from16 v86, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 806
    .end local v0    # "storageManagerIntent":Landroid/content/Intent;
    .local v86, "storageManagerIntent":Landroid/content/Intent;
    move-object/from16 v87, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 806
    .end local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .local v87, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_67d

    .line 810
    .end local v86    # "storageManagerIntent":Landroid/content/Intent;
    .end local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "storageManagerIntent":Landroid/content/Intent;
    .restart local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    :cond_679
    move-object/from16 v86, v0

    move-object/from16 v87, v3

    .line 810
    .end local v0    # "storageManagerIntent":Landroid/content/Intent;
    .end local v3    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v86    # "storageManagerIntent":Landroid/content/Intent;
    .restart local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    :goto_67d
    const-string v0, "com.android.companiondevicemanager"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 812
    .local v0, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_694

    .line 813
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_694

    .line 814
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v88, v4

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_696

    .line 819
    :cond_694
    move-object/from16 v88, v4

    .line 819
    .end local v4    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .local v88, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    :goto_696
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v3, "ringtonePickerIntent":Landroid/content/Intent;
    nop

    .line 821
    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 822
    .local v4, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6b5

    .line 823
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_6b5

    .line 824
    move-object/from16 v89, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 824
    .end local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .local v89, "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v90, v3

    const/4 v3, 0x1

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 824
    .end local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    .local v90, "ringtonePickerIntent":Landroid/content/Intent;
    goto :goto_6b9

    .line 829
    .end local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    .restart local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    :cond_6b5
    move-object/from16 v89, v0

    move-object/from16 v90, v3

    .line 829
    .end local v0    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ringtonePickerIntent":Landroid/content/Intent;
    .restart local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    :goto_6b9
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 830
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f5

    .line 832
    nop

    .line 833
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 834
    .local v3, "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_6f5

    .line 835
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_6f5

    .line 836
    move-object/from16 v91, v0

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 836
    .end local v0    # "textClassifierPackageName":Ljava/lang/String;
    .local v91, "textClassifierPackageName":Ljava/lang/String;
    move-object/from16 v92, v4

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 837
    .end local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .local v92, "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 838
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 839
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 840
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 840
    .end local v3    # "textClassifierPackage":Landroid/content/pm/PackageParser$Package;
    goto :goto_6f9

    .line 846
    .end local v91    # "textClassifierPackageName":Ljava/lang/String;
    .end local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v0    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_6f5
    move-object/from16 v91, v0

    move-object/from16 v92, v4

    .line 846
    .end local v0    # "textClassifierPackageName":Ljava/lang/String;
    .end local v4    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v91    # "textClassifierPackageName":Ljava/lang/String;
    .restart local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :goto_6f9
    const-string v0, "com.android.sharedstoragebackup"

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 848
    .local v0, "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_707

    .line 849
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 852
    :cond_707
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    if-eqz v3, :cond_710

    .line 853
    iget-object v3, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionGrantedCallback:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;

    invoke-interface {v3, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;->onDefaultRuntimePermissionsGranted(I)V

    .line 855
    :cond_710
    return-void

    .line 340
    .end local v0    # "sharedStorageBackupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "homePackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "calendarSyncAdapterCount":I
    .end local v7    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v8    # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v9    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v10    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v11    # "locationPackageNames":[Ljava/lang/String;
    .end local v12    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v13    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v14    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v15    # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v17    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v18    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v19    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20    # "installerPackageName":Ljava/lang/String;
    .end local v21    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v22    # "verifierPackageName":Ljava/lang/String;
    .end local v23    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "setupWizardPackageName":Ljava/lang/String;
    .end local v25    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "cameraIntent":Landroid/content/Intent;
    .end local v27    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v28    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v29    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v30    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v31    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v33    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v34    # "certInstallerIntent":Landroid/content/Intent;
    .end local v35    # "containerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v37    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v41    # "cbrIntent":Landroid/content/Intent;
    .end local v42    # "carrierProvIntent":Landroid/content/Intent;
    .end local v43    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v44    # "calendarIntent":Landroid/content/Intent;
    .end local v45    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v48    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v49    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v51    # "contactsIntent":Landroid/content/Intent;
    .end local v53    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v54    # "contactsSyncAdapterCount":I
    .end local v55    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v56    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v58    # "mapsIntent":Landroid/content/Intent;
    .end local v59    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v60    # "galleryIntent":Landroid/content/Intent;
    .end local v61    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "emailIntent":Landroid/content/Intent;
    .end local v64    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v65    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v66    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v71    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v72    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v76    # "musicIntent":Landroid/content/Intent;
    .end local v77    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "homeIntent":Landroid/content/Intent;
    .end local v82    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "emergencyInfoIntent":Landroid/content/Intent;
    .end local v84    # "nfcTagIntent":Landroid/content/Intent;
    .end local v85    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .end local v86    # "storageManagerIntent":Landroid/content/Intent;
    .end local v87    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .end local v88    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .end local v89    # "companionDeviceDiscoveryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "ringtonePickerIntent":Landroid/content/Intent;
    .end local v91    # "textClassifierPackageName":Ljava/lang/String;
    .end local v92    # "ringtonePickerPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_711
    move-exception v0

    :try_start_712
    monitor-exit v3
    :try_end_713
    .catchall {:try_start_712 .. :try_end_713} :catchall_711

    throw v0
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 305
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to platform components for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Landroid/content/pm/PackageList;

    move-result-object v0

    .line 307
    .local v0, "packageList":Landroid/content/pm/PackageList;
    invoke-virtual {v0}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 308
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 309
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_39

    .line 310
    goto :goto_24

    .line 312
    :cond_39
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 313
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 315
    goto :goto_24

    .line 317
    :cond_4e
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V

    .line 318
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_24

    .line 319
    :cond_52
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1143
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1144
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1148
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1149
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .registers 23
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "ignoreSystemPackage"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1198
    move/from16 v8, p5

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1199
    return-void

    .line 1202
    :cond_f
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1203
    .local v2, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1211
    .local v3, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1212
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1213
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1214
    .local v4, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_3d

    .line 1215
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1216
    return-void

    .line 1218
    :cond_2d
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1219
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v5

    .line 1220
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1225
    .end local v2    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v9, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3d
    move-object v9, v2

    move-object v10, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1226
    .local v11, "grantablePermissionCount":I
    const/4 v12, 0x0

    move v2, v12

    .local v2, "i":I
    :goto_45
    move v13, v2

    .end local v2    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_aa

    .line 1227
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 1231
    .local v7, "permission":Ljava/lang/String;
    if-eqz v10, :cond_58

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 1232
    goto :goto_a7

    .line 1235
    :cond_58
    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 1236
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v8}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1245
    .local v14, "flags":I
    if-eqz v14, :cond_70

    if-eqz p4, :cond_6d

    goto :goto_70

    .line 1271
    :cond_6d
    move-object/from16 v16, v7

    goto :goto_90

    .line 1249
    :cond_70
    :goto_70
    and-int/lit8 v2, v14, 0x4

    if-eqz v2, :cond_75

    .line 1250
    goto :goto_a7

    .line 1253
    :cond_75
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v8, v12}, Landroid/content/pm/PackageManagerInternal;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1260
    const/16 v2, 0x20

    .line 1261
    .local v2, "newFlags":I
    if-eqz p3, :cond_82

    .line 1262
    or-int/lit8 v2, v2, 0x10

    .line 1265
    .end local v2    # "newFlags":I
    .local v15, "newFlags":I
    :cond_82
    move v15, v2

    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v3, v7

    move v5, v15

    move v6, v15

    move-object/from16 v16, v7

    move v7, v8

    .end local v7    # "permission":Ljava/lang/String;
    .local v16, "permission":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1271
    .end local v15    # "newFlags":I
    :goto_90
    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_a7

    and-int/lit8 v2, v14, 0x10

    if-eqz v2, :cond_a7

    if-nez p3, :cond_a7

    .line 1278
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v3, v16

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1226
    .end local v14    # "flags":I
    .end local v16    # "permission":Ljava/lang/String;
    :cond_a7
    :goto_a7
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    goto :goto_45

    .line 1283
    .end local v2    # "i":I
    :cond_aa
    return-void
.end method

.method private grantRuntimePermissionsForPackage(ILandroid/content/pm/PackageParser$Package;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 273
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 274
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 276
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v3, :cond_20

    .line 277
    goto :goto_b

    .line 279
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 280
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_29
    goto :goto_b

    .line 283
    :cond_2a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 284
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 286
    :cond_34
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageParser$Package;)Z
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1286
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_e

    .line 1287
    return v1

    .line 1289
    :cond_e
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 1290
    return v2

    .line 1292
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1293
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1294
    .local v0, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_29

    .line 1295
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_32

    .line 1296
    return v2

    .line 1298
    :cond_29
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_32

    .line 1299
    return v2

    .line 1301
    :cond_32
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 1303
    .local v3, "systemPackageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1304
    .local v4, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-nez v5, :cond_54

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v7, 0x4

    .line 1305
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_54

    .line 1304
    :cond_52
    move v1, v2

    goto :goto_55

    .line 1305
    :cond_54
    :goto_54
    nop

    .line 1304
    :goto_55
    return v1
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1407
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1409
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_46

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_46

    .line 1411
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1412
    goto :goto_4

    .line 1414
    :cond_1b
    const-string v1, "exceptions"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1415
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    .line 1417
    :cond_2b
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1420
    :cond_46
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1424
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1426
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1426
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_a7

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1427
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_a7

    .line 1428
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1429
    goto :goto_4

    .line 1431
    :cond_1b
    const-string v1, "exception"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1432
    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1434
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1435
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1436
    .local v3, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v3, :cond_81

    .line 1438
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1439
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v4, :cond_58

    .line 1440
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1442
    goto :goto_4

    .line 1446
    :cond_58
    invoke-static {v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1447
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1450
    goto :goto_4

    .line 1452
    :cond_78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 1453
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_81
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1457
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto :goto_4

    .line 1458
    :cond_85
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1461
    :cond_a7
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1465
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1467
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1467
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6d

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6d

    .line 1469
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1470
    goto :goto_4

    .line 1473
    :cond_1b
    const-string/jumbo v1, "permission"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1474
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 1476
    const-string v3, "DefaultPermGrantPolicy"

    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1478
    goto :goto_4

    .line 1481
    :cond_3d
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1483
    .local v3, "fixed":Z
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v4, v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;Z)V

    .line 1484
    .local v4, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "fixed":Z
    .end local v4    # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_4

    .line 1486
    :cond_4c
    const-string v1, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1489
    :cond_6d
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1373
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1374
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1375
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1378
    :cond_d
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1381
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_b5

    aget-object v4, v0, v1

    .line 1382
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 1383
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1383
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    goto :goto_b1

    .line 1387
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1388
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    goto :goto_b1

    .line 1392
    :cond_6d
    :try_start_6d
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_77} :catch_9a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_77} :catch_9a

    .line 1391
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1394
    const/4 v6, 0x0

    :try_start_79
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1395
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1396
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_83} :catch_89
    .catchall {:try_start_79 .. :try_end_83} :catchall_87

    .line 1397
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_83
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_86} :catch_9a
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_9a

    .line 1399
    .end local v5    # "str":Ljava/io/InputStream;
    goto :goto_b1

    .line 1397
    .restart local v5    # "str":Ljava/io/InputStream;
    :catchall_87
    move-exception v7

    goto :goto_8b

    .line 1391
    :catch_89
    move-exception v6

    :try_start_8a
    throw v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_87

    .line 1397
    :goto_8b
    if-eqz v6, :cond_96

    :try_start_8d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_90} :catch_9a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9a

    goto :goto_99

    :catch_91
    move-exception v8

    :try_start_92
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_99

    :cond_96
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :goto_99
    throw v7
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_9a} :catch_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_9a

    .end local v5    # "str":Ljava/io/InputStream;
    :catch_9a
    move-exception v5

    .line 1398
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "DefaultPermGrantPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1402
    :cond_b5
    return-object v2
.end method

.method private revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1153
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1154
    return-void

    .line 1156
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1158
    .local v0, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1160
    .local v2, "permission":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1161
    goto :goto_14

    .line 1164
    :cond_27
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p4}, Landroid/content/pm/PackageManagerInternal;->getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 1168
    .local v9, "flags":I
    and-int/lit8 v3, v9, 0x20

    if-nez v3, :cond_34

    .line 1169
    goto :goto_14

    .line 1172
    :cond_34
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_39

    .line 1173
    goto :goto_14

    .line 1178
    :cond_39
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_40

    if-nez p3, :cond_40

    .line 1179
    goto :goto_14

    .line 1181
    :cond_40
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p4, v5}, Landroid/content/pm/PackageManagerInternal;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1191
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v4, v2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1193
    .end local v2    # "permission":Ljava/lang/String;
    .end local v9    # "flags":I
    goto :goto_14

    .line 1194
    :cond_55
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 270
    return-void
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1023
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to active LUI app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    if-nez p1, :cond_19

    .line 1025
    return-void

    .line 1027
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1028
    .local v0, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2b

    .line 1029
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1030
    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1032
    :cond_2b
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1049
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default browser for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    if-nez p1, :cond_19

    .line 1051
    return-void

    .line 1053
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1054
    .local v0, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2f

    .line 1055
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1056
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1058
    :cond_2f
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 907
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default dialer app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-nez p1, :cond_19

    .line 909
    return-void

    .line 911
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 912
    .local v0, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_43

    .line 913
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 914
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 915
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 916
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 917
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 918
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 920
    :cond_43
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 945
    if-nez p1, :cond_3

    .line 946
    return-void

    .line 948
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 949
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_c

    .line 950
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Landroid/content/pm/PackageParser$Package;I)V

    .line 952
    :cond_c
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 891
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default sms app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    if-nez p1, :cond_19

    .line 893
    return-void

    .line 895
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 896
    .local v0, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_48

    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 897
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 898
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 899
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 900
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 901
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 902
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 904
    :cond_48
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 923
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-nez p1, :cond_19

    .line 925
    return-void

    .line 927
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 928
    .local v0, "useOpenWifiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2f

    .line 929
    invoke-static {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 930
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->COARSE_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 933
    :cond_2f
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 955
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-nez p1, :cond_19

    .line 957
    return-void

    .line 959
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3d

    aget-object v2, p1, v1

    .line 960
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 961
    .local v3, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_3a

    .line 962
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 963
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 964
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 965
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 959
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 968
    :cond_3d
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 971
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-nez p1, :cond_19

    .line 973
    return-void

    .line 975
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_47

    aget-object v2, p1, v1

    .line 976
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 977
    .local v3, "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_44

    .line 978
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 979
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 980
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 981
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 982
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 983
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 975
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "imsServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 986
    :cond_47
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 990
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to enabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    if-nez p1, :cond_19

    .line 992
    return-void

    .line 994
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 995
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 996
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_36

    .line 997
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1000
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1001
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 994
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1004
    :cond_39
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1008
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-nez p1, :cond_19

    .line 1010
    return-void

    .line 1012
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_39

    aget-object v2, p1, v1

    .line 1013
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1014
    .local v3, "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_36

    .line 1015
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1016
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1017
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1012
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "dataServicePackage":Landroid/content/pm/PackageParser$Package;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1020
    :cond_39
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1035
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-nez p1, :cond_19

    .line 1037
    return-void

    .line 1039
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 1040
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1041
    .local v3, "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_31

    .line 1042
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1043
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1039
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "luiAppPackage":Landroid/content/pm/PackageParser$Package;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1046
    :cond_34
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 249
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 257
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

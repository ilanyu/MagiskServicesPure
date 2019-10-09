.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$Injector;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field private static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field private mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field private mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V
    .registers 5
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 132
    new-instance v0, Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/Owners$Injector;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/Owners;-><init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V

    .line 133
    return-void
.end method

.method constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V
    .registers 6
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p4, "injector"    # Lcom/android/server/devicepolicy/Owners$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 141
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 142
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 143
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Landroid/app/admin/SystemUpdateInfo;

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/Owners;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/devicepolicy/Owners;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # I

    .line 70
    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Ljava/time/LocalDate;

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "x1"    # Ljava/time/LocalDate;

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/devicepolicy/Owners;

    .line 70
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private pushToPackageManagerLocked()V
    .registers 5

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 195
    .local v0, "po":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_2b

    .line 196
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 198
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 199
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    .line 198
    :goto_39
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 201
    return-void
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .registers 24
    .param p1, "file"    # Ljava/io/File;

    move-object/from16 v1, p0

    .line 490
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 492
    return v2

    .line 495
    :cond_a
    const/4 v3, 0x1

    :try_start_b
    new-instance v0, Landroid/util/AtomicFile;
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_d} :catch_106
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d} :catch_106

    move-object/from16 v4, p1

    :try_start_f
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 496
    .local v0, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 497
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 499
    :goto_23
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .line 499
    .local v7, "type":I
    if-eq v6, v3, :cond_100

    .line 500
    const/4 v6, 0x2

    if-eq v7, v6, :cond_2e

    .line 501
    goto :goto_23

    .line 504
    :cond_2e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "device-owner"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_58

    .line 506
    const-string/jumbo v8, "name"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 507
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v8, "package"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 508
    .local v12, "packageName":Ljava/lang/String;
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v8, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 511
    iput v2, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 512
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    goto/16 :goto_e7

    :cond_58
    const-string v8, "device-initializer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 512
    .end local v6    # "tag":Ljava/lang/String;
    goto/16 :goto_e7

    .line 514
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_62
    const-string/jumbo v8, "profile-owner"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 515
    const-string/jumbo v8, "package"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 516
    .local v12, "profileOwnerPackageName":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 517
    .local v17, "profileOwnerName":Ljava/lang/String;
    const-string v8, "component"

    .line 518
    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v10, "userId"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 520
    .local v9, "userId":I
    const/4 v10, 0x0

    .line 521
    .local v10, "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v8, :cond_ba

    .line 522
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 524
    .local v11, "admin":Landroid/content/ComponentName;
    if-eqz v11, :cond_a4

    .line 525
    new-instance v13, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v10, v13

    goto :goto_ba

    .line 530
    :cond_a4
    const-string v13, "DevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error parsing device-owner file. Bad component name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v11    # "admin":Landroid/content/ComponentName;
    .local v16, "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :cond_ba
    :goto_ba
    move-object/from16 v16, v10

    if-nez v16, :cond_cc

    .line 535
    new-instance v18, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v18

    .line 539
    .end local v16    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .restart local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :cond_cc
    move-object/from16 v10, v16

    iget-object v11, v1, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v8    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v9    # "userId":I
    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v12    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v17    # "profileOwnerName":Ljava/lang/String;
    goto :goto_e7

    :cond_d8
    const-string/jumbo v8, "system-update-policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 541
    invoke-static {v5}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 546
    .end local v6    # "tag":Ljava/lang/String;
    :goto_e7
    goto/16 :goto_23

    .line 543
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_e9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tag in device owner file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    .end local v6    # "tag":Ljava/lang/String;
    :cond_100
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_103} :catch_104
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_103} :catch_104

    .line 550
    .end local v0    # "input":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    goto :goto_110

    .line 548
    :catch_104
    move-exception v0

    goto :goto_109

    :catch_106
    move-exception v0

    move-object/from16 v4, p1

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    :goto_109
    const-string v2, "DevicePolicyManagerService"

    const-string v5, "Error parsing device-owner file"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_110
    return v3
.end method


# virtual methods
.method clearDeviceOwner()V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 280
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 282
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method clearSystemUpdatePolicy()V
    .registers 3

    .line 373
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "needBlank":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_49

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Device Owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  User ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    const/4 v0, 0x1

    .line 986
    :cond_49
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v1, :cond_6c

    .line 987
    if-eqz v0, :cond_52

    .line 988
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 990
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System Update Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    const/4 v0, 0x1

    .line 993
    :cond_6c
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_c7

    .line 994
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 995
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    if-eqz v0, :cond_8b

    .line 996
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 998
    :cond_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Profile Owner (User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1000
    const/4 v0, 0x1

    .line 1001
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    goto :goto_7a

    .line 1003
    :cond_c7
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v1, :cond_ea

    .line 1004
    if-eqz v0, :cond_d0

    .line 1005
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1007
    :cond_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Pending System Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    const/4 v0, 0x1

    .line 1010
    :cond_ea
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v1, :cond_f2

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_113

    .line 1011
    :cond_f2
    if-eqz v0, :cond_f7

    .line 1012
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1014
    :cond_f7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System update freeze record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x1

    .line 1018
    :cond_113
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return-object v1

    .line 235
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1027
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return-object v1

    .line 229
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return-object v1

    .line 206
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return-object v1

    .line 247
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit v0

    return-object v1

    .line 241
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getDeviceOwnerUserId()I
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    monitor-exit v0

    return v1

    .line 212
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-nez v1, :cond_a

    .line 219
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 221
    :cond_a
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 223
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 443
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getLegacyConfigFile()Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1022
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userId"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 336
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 337
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1032
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profile_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 357
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 341
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 343
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 344
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 348
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 350
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    monitor-exit v0

    return-object v2

    .line 351
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 452
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_17

    iget-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    monitor-exit v0

    return v2

    .line 453
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 381
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .registers 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v0, "freezePeriodRecord":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-eqz v1, :cond_19

    .line 388
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 390
    :cond_19
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_1f
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_32

    .line 394
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 396
    :cond_32
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :goto_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object v1

    .line 595
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object v1

    .line 363
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method hasDeviceOwner()Z
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 422
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method hasProfileOwner(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 434
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method isDeviceOwnerUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 426
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 428
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method load()V
    .registers 10

    .line 150
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFile()Ljava/io/File;

    move-result-object v1

    .line 154
    .local v1, "legacy":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 162
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 164
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 165
    .end local v5    # "userId":I
    goto :goto_1f

    .line 169
    :cond_33
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_64

    .line 170
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed to remove the legacy setting file"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 174
    :cond_41
    new-instance v4, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v4, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 177
    .local v5, "ui":Landroid/content/pm/UserInfo;
    new-instance v6, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    .line 178
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_4d

    .line 180
    :cond_64
    :goto_64
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 182
    .restart local v5    # "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 183
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_71

    .line 184
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 185
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "User %d has both DO and PO, which is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 185
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_b3
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 190
    .end local v1    # "legacy":Ljava/io/File;
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_bb
    move-exception v1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method pushToAppOpsLocked()V
    .registers 9

    .line 599
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_5

    .line 600
    return-void

    .line 602
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 604
    .local v0, "ident":J
    :try_start_9
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 605
    .local v2, "owners":Landroid/util/SparseIntArray;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const v4, 0x422000

    if-eqz v3, :cond_28

    .line 606
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 609
    .local v3, "uid":I
    if-ltz v3, :cond_28

    .line 610
    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    .end local v3    # "uid":I
    :cond_28
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_66

    .line 614
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "poi":I
    :goto_34
    if-ltz v3, :cond_66

    .line 615
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 616
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 618
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 615
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 619
    .local v5, "uid":I
    if-ltz v5, :cond_63

    .line 620
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    .end local v5    # "uid":I
    :cond_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 624
    .end local v3    # "poi":I
    :cond_66
    const-class v3, Landroid/app/AppOpsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManagerInternal;

    .line 625
    .local v3, "appops":Landroid/app/AppOpsManagerInternal;
    if-eqz v3, :cond_7c

    .line 626
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_78

    move-object v4, v2

    goto :goto_79

    :cond_78
    const/4 v4, 0x0

    :goto_79
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_7c
    .catchall {:try_start_9 .. :try_end_7c} :catchall_81

    .line 629
    .end local v2    # "owners":Landroid/util/SparseIntArray;
    .end local v3    # "appops":Landroid/app/AppOpsManagerInternal;
    :cond_7c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_81
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeProfileOwner(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 304
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .registers 4
    .param p1, "newInfo"    # Landroid/app/admin/SystemUpdateInfo;

    .line 579
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 582
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 585
    :cond_e
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 586
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 587
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 588
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 251
    if-gez p3, :cond_19

    .line 252
    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id for device owner user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_19
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    const/4 v1, 0x1

    :try_start_1d
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "remoteBugreportUri"    # Ljava/lang/String;
    .param p2, "remoteBugreportHash"    # Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_f

    .line 471
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 474
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 475
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .registers 4

    .line 458
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_c

    .line 460
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 462
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "userRestrictionsMigrated"    # Z

    .line 266
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 269
    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 271
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 272
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 14
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 295
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 480
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 482
    .local v1, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v1, :cond_14

    .line 483
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 485
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 486
    .end local v1    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .registers 6
    .param p1, "start"    # Ljava/time/LocalDate;
    .param p2, "end"    # Ljava/time/LocalDate;

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 408
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 409
    const/4 v0, 0x1

    .line 411
    :cond_f
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 412
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 413
    const/4 v0, 0x1

    .line 415
    :cond_1a
    monitor-exit v1

    .line 416
    return v0

    .line 415
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 4
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 367
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 369
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public systemReady()V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method transferDeviceOwnership(Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "target"    # Landroid/content/ComponentName;

    .line 322
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 328
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method transferProfileOwner(Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 312
    .local v1, "ownerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    .line 315
    .local v2, "newOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 318
    .end local v1    # "ownerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v2    # "newOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method writeDeviceOwner()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method writeProfileOwner(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    new-instance v1, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

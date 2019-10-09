.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .registers 3
    .param p2, "persistenceLock"    # Ljava/lang/Object;

    .line 5162
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5143
    new-instance p1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    .line 5147
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5150
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5154
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5158
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5163
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5164
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5139
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .line 5139
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemovedLPw(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5350
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5352
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5353
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5354
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_11

    .line 5356
    :cond_21
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5357
    .restart local v1    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    .line 5358
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    goto :goto_2d

    .line 5360
    :cond_3d
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5361
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5362
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5527
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 5527
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_94

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_94

    .line 5529
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5530
    goto :goto_4

    .line 5533
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x317b13

    const/4 v7, 0x0

    if-eq v5, v6, :cond_2b

    goto :goto_35

    :cond_2b
    const-string/jumbo v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v4, v7

    :cond_35
    :goto_35
    if-eqz v4, :cond_38

    goto :goto_92

    .line 5535
    :cond_38
    const-string/jumbo v1, "name"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5536
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 5537
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_64

    .line 5538
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5539
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5540
    goto :goto_4

    .line 5543
    :cond_64
    const-string v6, "granted"

    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5544
    .local v6, "grantedStr":Ljava/lang/String;
    if-eqz v6, :cond_75

    .line 5545
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    goto :goto_75

    :cond_73
    move v3, v7

    nop

    .line 5547
    .local v3, "granted":Z
    :cond_75
    :goto_75
    const-string v8, "flags"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5548
    .local v4, "flagsStr":Ljava/lang/String;
    if-eqz v4, :cond_84

    .line 5549
    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    nop

    .line 5551
    .local v7, "flags":I
    :cond_84
    const/16 v8, 0xff

    if-eqz v3, :cond_8f

    .line 5552
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5553
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_92

    .line 5556
    :cond_8f
    invoke-virtual {p2, v5, p3, v8, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5560
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "granted":Z
    .end local v4    # "flagsStr":Ljava/lang/String;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "grantedStr":Ljava/lang/String;
    .end local v7    # "flags":I
    :goto_92
    goto/16 :goto_4

    .line 5563
    :cond_94
    return-void
.end method

.method private parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5490
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5492
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 5492
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_93

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5493
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_93

    .line 5494
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 5495
    goto :goto_4

    .line 5498
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3472f0

    if-eq v4, v5, :cond_2a

    goto :goto_34

    :cond_2a
    const-string/jumbo v4, "perm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v3, 0x0

    :cond_34
    :goto_34
    if-eqz v3, :cond_37

    goto :goto_91

    .line 5500
    :cond_37
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5501
    .local v1, "permName":Ljava/lang/String;
    const-string/jumbo v4, "true"

    const-string v5, "granted"

    .line 5502
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5501
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 5504
    .local v10, "isGranted":Z
    const/4 v4, 0x0

    .line 5505
    .local v4, "permBits":I
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "set"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 5506
    or-int/lit8 v4, v4, 0x1

    .line 5508
    :cond_5f
    const-string/jumbo v5, "true"

    const-string v6, "fixed"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 5509
    or-int/lit8 v4, v4, 0x2

    .line 5511
    :cond_70
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "rou"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 5512
    or-int/lit8 v3, v4, 0x8

    .line 5512
    .end local v4    # "permBits":I
    .local v3, "permBits":I
    goto :goto_84

    .line 5515
    .end local v3    # "permBits":I
    .restart local v4    # "permBits":I
    :cond_83
    move v3, v4

    .line 5515
    .end local v4    # "permBits":I
    .restart local v3    # "permBits":I
    :goto_84
    if-nez v10, :cond_88

    if-eqz v3, :cond_91

    .line 5516
    :cond_88
    move-object v4, p0

    move-object v5, p2

    move-object v6, v1

    move v7, v10

    move v8, v3

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 5518
    .end local v1    # "permName":Ljava/lang/String;
    .end local v3    # "permBits":I
    .end local v10    # "isGranted":Z
    :cond_91
    :goto_91
    goto/16 :goto_4

    .line 5521
    :cond_93
    return-void
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5442
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 5444
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 5444
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_fc

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 5445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_fc

    .line 5446
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1b

    .line 5447
    goto :goto_4

    .line 5450
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x79e10974

    if-eq v6, v7, :cond_59

    const v1, 0x1b1cc

    if-eq v6, v1, :cond_4f

    const v1, 0x98dd20f

    if-eq v6, v1, :cond_44

    const v1, 0x1cf15833

    if-eq v6, v1, :cond_39

    goto :goto_64

    :cond_39
    const-string/jumbo v1, "shared-user"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x2

    goto :goto_65

    :cond_44
    const-string/jumbo v1, "runtime-permissions"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v3, 0x0

    goto :goto_65

    :cond_4f
    const-string/jumbo v1, "pkg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_59
    const-string/jumbo v3, "restored-perms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v1

    goto :goto_65

    :cond_64
    :goto_64
    move v3, v5

    :goto_65
    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_fe

    goto/16 :goto_fa

    .line 5481
    :pswitch_6b
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5482
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRestoredRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    .line 5482
    .end local v1    # "pkgName":Ljava/lang/String;
    goto/16 :goto_fa

    .line 5470
    :pswitch_77
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5471
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 5472
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_a5

    .line 5473
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown shared user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5475
    goto/16 :goto_4

    .line 5477
    :cond_a5
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5478
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_fa

    .line 5459
    :pswitch_ad
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5460
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5461
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_db

    .line 5462
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5464
    goto/16 :goto_4

    .line 5466
    :cond_db
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;I)V

    .line 5467
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_fa

    .line 5452
    :pswitch_e3
    const-string v3, "fingerprint"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5453
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5454
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5455
    .local v3, "defaultsGranted":Z
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5456
    .end local v1    # "fingerprint":Ljava/lang/String;
    .end local v3    # "defaultsGranted":Z
    nop

    .line 5483
    :goto_fa
    goto/16 :goto_4

    .line 5486
    :cond_fc
    return-void

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_ad
        :pswitch_77
        :pswitch_6b
    .end packed-switch
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 9
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .line 5365
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 5367
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5368
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 5369
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_2f

    .line 5370
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 5371
    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 5374
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_2f
    goto :goto_c

    .line 5375
    :cond_30
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5567
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5568
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5569
    const-string/jumbo v2, "name"

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5570
    const-string v2, "granted"

    .line 5571
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 5570
    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5572
    const-string v2, "flags"

    .line 5573
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 5572
    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5574
    const-string/jumbo v2, "item"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5575
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_4

    .line 5576
    :cond_42
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 27
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 5213
    move/from16 v2, p1

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v3, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v3, v2}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package-perms-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    .line 5216
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v4, v0

    .line 5217
    .local v4, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 5219
    .local v5, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5220
    :try_start_31
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5222
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_275

    .line 5223
    .local v0, "packageCount":I
    const/4 v8, 0x0

    .line 5223
    .local v8, "i":I
    :goto_3f
    if-ge v8, v0, :cond_75

    .line 5224
    :try_start_41
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5225
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 5226
    .local v10, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v11, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v11, :cond_6b

    .line 5227
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v11

    .line 5228
    .local v11, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5229
    invoke-virtual {v11, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v12

    .line 5230
    .local v12, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6b

    .line 5231
    invoke-virtual {v4, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_6e

    .line 5223
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v12    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 5247
    .end local v0    # "packageCount":I
    .end local v8    # "i":I
    :catchall_6e
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    goto/16 :goto_27a

    .line 5236
    .restart local v0    # "packageCount":I
    :cond_75
    :try_start_75
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_275

    .line 5237
    .local v8, "sharedUserCount":I
    const/4 v9, 0x0

    .line 5237
    .local v9, "i":I
    :goto_7e
    if-ge v9, v8, :cond_a9

    .line 5238
    :try_start_80
    iget-object v10, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5239
    .local v10, "sharedUserName":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/SharedUserSetting;

    .line 5240
    .local v11, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v11}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v12

    .line 5241
    .local v12, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 5242
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 5243
    .local v13, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a6

    .line 5244
    invoke-virtual {v5, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a6
    .catchall {:try_start_80 .. :try_end_a6} :catchall_6e

    .line 5237
    .end local v10    # "sharedUserName":Ljava/lang/String;
    .end local v11    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v12    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    :cond_a6
    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    .line 5247
    .end local v0    # "packageCount":I
    .end local v8    # "sharedUserCount":I
    .end local v9    # "i":I
    :cond_a9
    :try_start_a9
    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_275

    .line 5249
    const/4 v0, 0x0

    move-object v6, v0

    .line 5251
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_ac
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v6, v8

    .line 5253
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 5254
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5255
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5257
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5259
    const-string/jumbo v9, "runtime-permissions"

    invoke-interface {v8, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5261
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_d9} :catch_25c
    .catchall {:try_start_ac .. :try_end_d9} :catchall_256

    .line 5262
    .local v9, "fingerprint":Ljava/lang/String;
    if-eqz v9, :cond_ef

    .line 5263
    :try_start_db
    const-string v11, "fingerprint"

    invoke-interface {v8, v0, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_e0} :catch_e8
    .catchall {:try_start_db .. :try_end_e0} :catchall_e1

    goto :goto_ef

    .line 5344
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "fingerprint":Ljava/lang/String;
    :catchall_e1
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    goto/16 :goto_271

    .line 5339
    :catch_e8
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    goto/16 :goto_261

    .line 5266
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9    # "fingerprint":Ljava/lang/String;
    :cond_ef
    :goto_ef
    :try_start_ef
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_f3} :catch_25c
    .catchall {:try_start_ef .. :try_end_f3} :catchall_256

    .line 5267
    .local v11, "packageCount":I
    const/4 v12, 0x0

    .line 5267
    .local v12, "i":I
    :goto_f4
    if-ge v12, v11, :cond_11a

    .line 5268
    :try_start_f6
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 5269
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 5270
    .local v14, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5271
    const-string/jumbo v15, "name"

    invoke-interface {v8, v0, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5272
    invoke-direct {v1, v8, v14}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5273
    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_117} :catch_e8
    .catchall {:try_start_f6 .. :try_end_117} :catchall_e1

    .line 5267
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_f4

    .line 5276
    .end local v12    # "i":I
    :cond_11a
    :try_start_11a
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v12
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_11e} :catch_25c
    .catchall {:try_start_11a .. :try_end_11e} :catchall_256

    .line 5277
    .local v12, "sharedUserCount":I
    const/4 v13, 0x0

    .line 5277
    .local v13, "i":I
    :goto_11f
    if-ge v13, v12, :cond_145

    .line 5278
    :try_start_121
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5279
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 5280
    .local v15, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    const-string/jumbo v7, "shared-user"

    invoke-interface {v8, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5281
    const-string/jumbo v7, "name"

    invoke-interface {v8, v0, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5282
    invoke-direct {v1, v8, v15}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5283
    const-string/jumbo v7, "shared-user"

    invoke-interface {v8, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_121 .. :try_end_142} :catch_e8
    .catchall {:try_start_121 .. :try_end_142} :catchall_e1

    .line 5277
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    add-int/lit8 v13, v13, 0x1

    goto :goto_11f

    .line 5286
    .end local v13    # "i":I
    :cond_145
    :try_start_145
    const-string/jumbo v7, "runtime-permissions"

    invoke-interface {v8, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5292
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/pm/Settings;->access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_23b

    .line 5293
    iget-object v7, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    .line 5294
    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/pm/Settings;->access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 5295
    .local v7, "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v7, :cond_23b

    .line 5296
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 5297
    .local v13, "pkgCount":I
    const/4 v14, 0x0

    .line 5297
    .local v14, "i":I
    :goto_16a
    if-ge v14, v13, :cond_23b

    .line 5298
    nop

    .line 5299
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 5300
    .local v15, "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v15, :cond_228

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v16

    if-lez v16, :cond_228

    .line 5301
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 5302
    .local v17, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "restored-perms"

    invoke-interface {v8, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5303
    const-string/jumbo v10, "packageName"
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_18c} :catch_25c
    .catchall {:try_start_145 .. :try_end_18c} :catchall_256

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    :try_start_190
    invoke-interface {v8, v0, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5305
    .end local v17    # "pkgName":Ljava/lang/String;
    .local v4, "pkgName":Ljava/lang/String;
    .local v18, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v10

    .line 5306
    .local v10, "N":I
    const/16 v16, 0x0

    .line 5306
    .local v16, "z":I
    :goto_199
    move/from16 v19, v16

    .line 5306
    .end local v16    # "z":I
    .local v19, "z":I
    move/from16 v0, v19

    if-ge v0, v10, :cond_210

    .line 5307
    .end local v19    # "z":I
    .local v0, "z":I
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    move-object/from16 v20, v16

    .line 5308
    .local v20, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    move-object/from16 v21, v4

    const-string/jumbo v4, "perm"
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_190 .. :try_end_1ac} :catch_224
    .catchall {:try_start_190 .. :try_end_1ac} :catchall_220

    .line 5308
    .end local v4    # "pkgName":Ljava/lang/String;
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v22, v5

    const/4 v5, 0x0

    :try_start_1af
    invoke-interface {v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5309
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .local v22, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    const-string/jumbo v4, "name"

    move-object/from16 v23, v7

    move-object/from16 v5, v20

    iget-object v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    .line 5309
    .end local v7    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .end local v20    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    .local v5, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    .local v23, "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    move/from16 v24, v10

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5311
    .end local v10    # "N":I
    .local v24, "N":I
    iget-boolean v4, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v4, :cond_1ce

    .line 5312
    const-string v4, "granted"

    const-string/jumbo v7, "true"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5315
    :cond_1ce
    iget v4, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    const/4 v7, 0x1

    and-int/2addr v4, v7

    if-eqz v4, :cond_1de

    .line 5316
    const-string/jumbo v4, "set"

    const-string/jumbo v7, "true"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5318
    :cond_1de
    iget v4, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1ed

    .line 5319
    const-string v4, "fixed"

    const-string/jumbo v7, "true"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5321
    :cond_1ed
    iget v4, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1fd

    .line 5322
    const-string/jumbo v4, "rou"

    const-string/jumbo v7, "true"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5324
    :cond_1fd
    const-string/jumbo v4, "perm"

    const/4 v7, 0x0

    invoke-interface {v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5306
    .end local v5    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    add-int/lit8 v16, v0, 0x1

    .line 5306
    .end local v0    # "z":I
    .restart local v16    # "z":I
    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v7, v23

    move/from16 v10, v24

    const/4 v0, 0x0

    goto :goto_199

    .line 5326
    .end local v16    # "z":I
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v23    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .end local v24    # "N":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .local v5, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v7    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v10    # "N":I
    :cond_210
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move/from16 v24, v10

    .line 5326
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v7    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .end local v10    # "N":I
    .restart local v21    # "pkgName":Ljava/lang/String;
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v23    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v24    # "N":I
    const-string/jumbo v0, "restored-perms"

    const/4 v4, 0x0

    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5326
    .end local v15    # "pkgGrants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v21    # "pkgName":Ljava/lang/String;
    .end local v24    # "N":I
    goto :goto_22f

    .line 5344
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "fingerprint":Ljava/lang/String;
    .end local v11    # "packageCount":I
    .end local v12    # "sharedUserCount":I
    .end local v13    # "pkgCount":I
    .end local v14    # "i":I
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v23    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :catchall_220
    move-exception v0

    move-object/from16 v22, v5

    .line 5344
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    goto :goto_271

    .line 5339
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :catch_224
    move-exception v0

    move-object/from16 v22, v5

    .line 5339
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    goto :goto_261

    .line 5297
    .end local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .local v4, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v7    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9    # "fingerprint":Ljava/lang/String;
    .restart local v11    # "packageCount":I
    .restart local v12    # "sharedUserCount":I
    .restart local v13    # "pkgCount":I
    .restart local v14    # "i":I
    :cond_228
    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object v4, v0

    .line 5297
    .end local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v7    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v23    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    :goto_22f
    add-int/lit8 v14, v14, 0x1

    move-object v0, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v22

    move-object/from16 v7, v23

    const/4 v10, 0x1

    goto/16 :goto_16a

    .line 5332
    .end local v13    # "pkgCount":I
    .end local v14    # "i":I
    .end local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v23    # "restoredGrants":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .restart local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :cond_23b
    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 5332
    .end local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5333
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5335
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 5336
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_253
    .catch Ljava/lang/Throwable; {:try_start_1af .. :try_end_253} :catch_254
    .catchall {:try_start_1af .. :try_end_253} :catchall_270

    .line 5336
    .end local v8    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "fingerprint":Ljava/lang/String;
    .end local v11    # "packageCount":I
    .end local v12    # "sharedUserCount":I
    goto :goto_26b

    .line 5339
    :catch_254
    move-exception v0

    goto :goto_261

    .line 5344
    .end local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :catchall_256
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 5344
    .end local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    goto :goto_271

    .line 5339
    .end local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :catch_25c
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 5340
    .end local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :goto_261
    :try_start_261
    const-string v4, "PackageManager"

    const-string v5, "Failed to write settings, restoring backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5342
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_26b
    .catchall {:try_start_261 .. :try_end_26b} :catchall_270

    .line 5344
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_26b
    :goto_26b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5345
    nop

    .line 5346
    return-void

    .line 5344
    :catchall_270
    move-exception v0

    :goto_271
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 5247
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :catchall_275
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    .line 5247
    .end local v4    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .end local v5    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v18    # "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    .restart local v22    # "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;>;"
    :goto_27a
    :try_start_27a
    monitor-exit v6
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_27c

    throw v0

    :catchall_27c
    move-exception v0

    goto :goto_27a
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 5167
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 5378
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5379
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5171
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5172
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5173
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 5382
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    .line 5383
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5384
    return-void

    .line 5389
    :cond_d
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5393
    .local v1, "destination":Landroid/util/AtomicFile;
    :try_start_12
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_16} :catch_49

    .line 5398
    .local v2, "in":Ljava/io/FileInputStream;
    nop

    .line 5397
    nop

    .line 5401
    :try_start_18
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 5402
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5403
    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_2a
    .catchall {:try_start_18 .. :try_end_23} :catchall_28

    .line 5411
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5412
    nop

    .line 5413
    return-void

    .line 5411
    :catchall_28
    move-exception v3

    goto :goto_45

    .line 5405
    :catch_2a
    move-exception v3

    .line 5407
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 5408
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing permissions file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_28

    .line 5411
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_45
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 5395
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_49
    move-exception v2

    .line 5396
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string v3, "PackageManager"

    const-string v4, "No permissions state"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5397
    return-void
.end method

.method public rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I

    .line 5420
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    .line 5421
    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/pm/Settings;->access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5422
    .local v0, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-nez v0, :cond_1d

    .line 5423
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5424
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    # getter for: Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/Settings;->access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5427
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 5428
    .local v1, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-nez v1, :cond_2e

    .line 5429
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 5430
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5433
    :cond_2e
    new-instance v2, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {v2, v3, p2, p3, p4}, Lcom/android/server/pm/Settings$RestoredPermissionGrant;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/String;ZI)V

    .line 5435
    .local v2, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5436
    return-void
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .registers 15
    .param p1, "userId"    # I

    .line 5181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5183
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_43

    .line 5184
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5187
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5188
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    .line 5189
    .local v5, "lastNotWrittenMutationTimeMillis":J
    sub-long v7, v0, v5

    .line 5191
    .local v7, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v9, 0x7d0

    cmp-long v2, v7, v9

    if-ltz v2, :cond_2b

    .line 5192
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5193
    return-void

    .line 5197
    :cond_2b
    add-long/2addr v9, v5

    sub-long/2addr v9, v0

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 5199
    .local v9, "maxDelayMillis":J
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 5202
    .local v2, "writeDelayMillis":J
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5203
    .local v4, "message":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5204
    .end local v2    # "writeDelayMillis":J
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "lastNotWrittenMutationTimeMillis":J
    .end local v7    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v9    # "maxDelayMillis":J
    goto :goto_59

    .line 5205
    :cond_43
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5206
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5207
    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5208
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5210
    .end local v2    # "message":Landroid/os/Message;
    :goto_59
    return-void
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 5176
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5177
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsSync(I)V

    .line 5178
    return-void
.end method

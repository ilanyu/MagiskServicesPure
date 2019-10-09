.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_DISABLED_REASON:Ljava/lang/String; = "disabled-reason"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private mLastKnownForegroundElapsedTime:J

.field private mLastResetTime:J

.field private final mPackageUid:I

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 5
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 137
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 6
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 129
    nop

    .line 130
    if-eqz p4, :cond_5

    .line 129
    move-object v0, p4

    goto :goto_9

    .line 130
    :cond_5
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    .line 129
    :goto_9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 982
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ZN-r6tS0M7WKGK6nbXyJZPwNRGc;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1149
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$hEXnzlESoRjagj8Pd9f4PrqudKE;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 133
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .registers 8

    .line 665
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 666
    return v1

    .line 668
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 672
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    .local v2, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_44

    .line 675
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 676
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 678
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 679
    goto :goto_41

    .line 681
    :cond_30
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    if-eqz v5, :cond_41

    .line 684
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v6

    if-nez v6, :cond_41

    .line 685
    const/4 v1, 0x0

    return v1

    .line 674
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "activity":Landroid/content/ComponentName;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 688
    .end local v3    # "i":I
    :cond_44
    return v1
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;
    .registers 11
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z
    .param p4, "ignoreInvisible"    # Z
    .param p5, "disabledReason"    # I

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-ne p2, v2, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    move v2, v0

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable and disabledReason disagree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 395
    .local v2, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_42

    if-eqz p4, :cond_42

    .line 396
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_86

    .line 399
    :cond_42
    if-nez p3, :cond_47

    .line 400
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 402
    :cond_47
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 404
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 405
    const/16 v0, 0x21

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 406
    if-eqz p2, :cond_65

    .line 407
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 409
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    if-nez v0, :cond_65

    .line 410
    invoke-virtual {v2, p5}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 413
    :cond_65
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 417
    invoke-virtual {v2, v3}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 420
    :cond_81
    return-object v2

    .line 422
    :cond_82
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 423
    return-object v3

    .line 397
    :cond_86
    :goto_86
    return-object v3
.end method

.method private disableDynamicWithId(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z
    .param p3, "disabledReason"    # I

    .line 360
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 363
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "ignoreInvisible"    # Z

    .line 203
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_31

    if-eqz p2, :cond_11

    .line 204
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_31

    .line 205
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be manipulated via APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_31
    :goto_31
    return-void
.end method

.method private forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 234
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_16

    .line 235
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 236
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 239
    :cond_16
    return-object v0
.end method

.method private forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 247
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 249
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 252
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 254
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 653
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 654
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 655
    return-object p0

    .line 657
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 6
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .line 1025
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1026
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 1027
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1030
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 984
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_e

    .line 985
    const/4 v0, -0x1

    return v0

    .line 987
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 988
    const/4 v0, 0x1

    return v0

    .line 990
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 5
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1151
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1152
    .local v0, "ret":I
    if-eqz v0, :cond_f

    .line 1153
    return v0

    .line 1160
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 1161
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    return v1

    .line 1165
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1166
    if-eqz v0, :cond_32

    .line 1167
    return v0

    .line 1172
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static synthetic lambda$refreshPinnedFlags$0(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 7
    .param p1, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 463
    nop

    .line 464
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 463
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 466
    .local v0, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_37

    .line 469
    :cond_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1c
    if-ltz v1, :cond_36

    .line 470
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 472
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_2f

    .line 477
    goto :goto_33

    .line 479
    :cond_2f
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 469
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 481
    .end local v1    # "i":I
    :cond_36
    return-void

    .line 467
    :cond_37
    :goto_37
    return-void
.end method

.method static synthetic lambda$verifyStates$3(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1681
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$verifyStates$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1685
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$verifyStates$5(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1688
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 14
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1461
    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 1467
    .local v1, "ret":Lcom/android/server/pm/ShortcutPackage;
    const-string v2, "call-count"

    .line 1468
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 1469
    const-string/jumbo v2, "last-reset"

    .line 1470
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 1473
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1475
    .local v2, "outerDepth":I
    :goto_25
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 1475
    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_8f

    const/4 v3, 0x3

    if-ne v4, v3, :cond_36

    .line 1476
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_8f

    .line 1477
    :cond_36
    const/4 v3, 0x2

    if-eq v4, v3, :cond_3a

    .line 1478
    goto :goto_25

    .line 1480
    :cond_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1481
    .local v3, "depth":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1482
    .local v6, "tag":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    if-ne v3, v7, :cond_8b

    .line 1483
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x72a5f22b

    if-eq v8, v9, :cond_60

    const v9, -0x146a23ba

    if-eq v8, v9, :cond_56

    goto :goto_6b

    :cond_56
    const-string/jumbo v8, "shortcut"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    goto :goto_6c

    :cond_60
    const-string/jumbo v5, "package-info"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    const/4 v5, 0x0

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v5, v7

    :goto_6c
    packed-switch v5, :pswitch_data_90

    goto :goto_8b

    .line 1489
    :pswitch_70
    nop

    .line 1490
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v5

    .line 1489
    invoke-static {p2, v0, v5, p3}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 1493
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v7, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    goto :goto_25

    .line 1485
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :pswitch_83
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 1487
    goto :goto_25

    .line 1497
    :cond_8b
    :goto_8b
    invoke-static {v3, v6}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 1498
    .end local v3    # "depth":I
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_25

    .line 1499
    :cond_8f
    return-object v1

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_83
        :pswitch_70
    .end packed-switch
.end method

.method private static parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1628
    const-string v0, "intent-base"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1631
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1633
    .local v1, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1b

    .line 1634
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4b

    .line 1635
    :cond_1b
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1f

    .line 1636
    goto :goto_a

    .line 1638
    :cond_1f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1639
    .local v2, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4cd5119d

    if-eq v6, v7, :cond_32

    goto :goto_3b

    :cond_32
    const-string v6, "extras"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v5, 0x0

    :cond_3b
    :goto_3b
    if-nez v5, :cond_46

    .line 1646
    nop

    .line 1647
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1646
    invoke-static {v0, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1648
    goto :goto_a

    .line 1650
    :cond_46
    invoke-static {v2, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1652
    .end local v2    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_4b
    return-object v0
.end method

.method private static parseShortcut(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 58
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1519
    const/4 v1, 0x0

    .line 1520
    .local v1, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 1529
    .local v3, "extras":Landroid/os/PersistableBundle;
    const/4 v4, 0x0

    .line 1531
    .local v4, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v5, "id"

    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1532
    .local v5, "id":Ljava/lang/String;
    const-string v6, "activity"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v32

    .line 1534
    .local v32, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v6, "title"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1535
    .local v33, "title":Ljava/lang/String;
    const-string/jumbo v6, "titleid"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v34

    .line 1536
    .local v34, "titleResId":I
    const-string/jumbo v6, "titlename"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1537
    .local v35, "titleResName":Ljava/lang/String;
    const-string/jumbo v6, "text"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1538
    .local v36, "text":Ljava/lang/String;
    const-string/jumbo v6, "textid"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v37

    .line 1539
    .local v37, "textResId":I
    const-string/jumbo v6, "textname"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1540
    .local v38, "textResName":Ljava/lang/String;
    const-string v6, "dmessage"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1541
    .local v39, "disabledMessage":Ljava/lang/String;
    const-string v6, "dmessageid"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v40

    .line 1543
    .local v40, "disabledMessageResId":I
    const-string v6, "dmessagename"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1545
    .local v41, "disabledMessageResName":Ljava/lang/String;
    const-string v6, "disabled-reason"

    invoke-static {v0, v6}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1546
    .local v6, "disabledReason":I
    const-string v7, "intent"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1547
    .local v15, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v7, "rank"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v14, v7

    .line 1548
    .local v14, "rank":I
    const-string/jumbo v7, "timestamp"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v42

    .line 1549
    .local v42, "lastChangedTimestamp":J
    const-string v7, "flags"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    .line 1550
    .local v7, "flags":I
    const-string v8, "icon-res"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v13, v8

    .line 1551
    .local v13, "iconResId":I
    const-string v8, "icon-resname"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1552
    .local v44, "iconResName":Ljava/lang/String;
    const-string v8, "bitmap-path"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1554
    .local v45, "bitmapPath":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1554
    .local v8, "outerDepth":I
    :goto_8b
    move v12, v8

    .line 1556
    .end local v8    # "outerDepth":I
    .local v12, "outerDepth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v11, v8

    .line 1556
    .local v11, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_161

    const/4 v8, 0x3

    if-ne v11, v8, :cond_a4

    .line 1557
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v12, :cond_9e

    goto :goto_a4

    .line 1595
    :cond_9e
    move/from16 v48, v11

    move/from16 v49, v12

    goto/16 :goto_165

    .line 1558
    :cond_a4
    :goto_a4
    const/4 v10, 0x2

    if-eq v11, v10, :cond_ac

    .line 1559
    nop

    .line 1554
    move/from16 v49, v12

    goto/16 :goto_150

    .line 1561
    :cond_ac
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1562
    .local v8, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1567
    .local v9, "tag":Ljava/lang/String;
    const/16 v16, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, 0x0

    sparse-switch v17, :sswitch_data_1cc

    goto :goto_f4

    :sswitch_c0
    const-string v10, "categories"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    const/4 v10, 0x3

    goto :goto_f6

    :sswitch_ca
    const-string/jumbo v10, "string-array"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    const/4 v10, 0x4

    goto :goto_f6

    :sswitch_d5
    const-string v10, "intent-extras"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    move/from16 v10, v18

    goto :goto_f6

    :sswitch_e0
    const-string v10, "intent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    const/4 v10, 0x1

    goto :goto_f6

    :sswitch_ea
    const-string v10, "extras"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f4

    const/4 v10, 0x2

    goto :goto_f6

    :cond_f4
    :goto_f4
    move/from16 v10, v16

    :goto_f6
    packed-switch v10, :pswitch_data_1e2

    .line 1592
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1592
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .local v48, "type":I
    .local v49, "outerDepth":I
    invoke-static {v8, v9}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v10

    throw v10

    .line 1581
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    :pswitch_102
    const-string v10, "categories"

    move/from16 v48, v11

    const-string/jumbo v11, "name"

    .line 1581
    .end local v11    # "type":I
    .restart local v48    # "type":I
    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 1583
    const-string/jumbo v10, "string-array"

    const/4 v11, 0x0

    invoke-static {v0, v10, v11}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1585
    .local v10, "ar":[Ljava/lang/String;
    new-instance v11, Landroid/util/ArraySet;

    move/from16 v49, v12

    array-length v12, v10

    .line 1585
    .end local v12    # "outerDepth":I
    .restart local v49    # "outerDepth":I
    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v11

    .line 1586
    nop

    .line 1586
    .local v18, "i":I
    :goto_125
    move/from16 v11, v18

    .line 1586
    .end local v18    # "i":I
    .local v11, "i":I
    array-length v12, v10

    if-ge v11, v12, :cond_132

    .line 1587
    aget-object v12, v10, v11

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1586
    add-int/lit8 v18, v11, 0x1

    .line 1586
    .end local v11    # "i":I
    .restart local v18    # "i":I
    goto :goto_125

    .line 1589
    .end local v10    # "ar":[Ljava/lang/String;
    .end local v18    # "i":I
    :cond_132
    goto :goto_15d

    .line 1554
    .end local v8    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .restart local v12    # "outerDepth":I
    :cond_133
    move/from16 v49, v12

    .line 1554
    .end local v12    # "outerDepth":I
    .restart local v49    # "outerDepth":I
    goto :goto_150

    .line 1579
    .end local v49    # "outerDepth":I
    .restart local v8    # "depth":I
    .restart local v9    # "tag":Ljava/lang/String;
    .local v11, "type":I
    .restart local v12    # "outerDepth":I
    :pswitch_136
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1579
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .restart local v48    # "type":I
    .restart local v49    # "outerDepth":I
    goto :goto_150

    .line 1575
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    :pswitch_13b
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1575
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .restart local v48    # "type":I
    .restart local v49    # "outerDepth":I
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1576
    goto :goto_15d

    .line 1572
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    :pswitch_144
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1572
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .restart local v48    # "type":I
    .restart local v49    # "outerDepth":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    nop

    .line 1554
    .end local v8    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .restart local v12    # "outerDepth":I
    :goto_150
    move/from16 v8, v49

    .line 1554
    .end local v12    # "outerDepth":I
    .restart local v49    # "outerDepth":I
    goto/16 :goto_8b

    .line 1569
    .end local v49    # "outerDepth":I
    .restart local v8    # "depth":I
    .restart local v9    # "tag":Ljava/lang/String;
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    :pswitch_154
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1569
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .restart local v48    # "type":I
    .restart local v49    # "outerDepth":I
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1570
    nop

    .line 1554
    .end local v9    # "tag":Ljava/lang/String;
    .end local v48    # "type":I
    .end local v49    # "outerDepth":I
    .local v8, "outerDepth":I
    :goto_15d
    move/from16 v8, v49

    goto/16 :goto_8b

    .line 1595
    .end local v8    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v12    # "outerDepth":I
    :cond_161
    move/from16 v48, v11

    move/from16 v49, v12

    .line 1595
    .end local v11    # "type":I
    .end local v12    # "outerDepth":I
    .restart local v48    # "type":I
    .restart local v49    # "outerDepth":I
    :goto_165
    if-eqz v15, :cond_170

    .line 1597
    invoke-static {v15, v1}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 1598
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1599
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_170
    if-nez v6, :cond_177

    and-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_177

    .line 1607
    const/4 v6, 0x1

    .line 1611
    .end local v6    # "disabledReason":I
    .local v46, "disabledReason":I
    :cond_177
    move/from16 v46, v6

    if-eqz p3, :cond_180

    .line 1612
    or-int/lit16 v6, v7, 0x1000

    .line 1615
    .end local v7    # "flags":I
    .local v6, "flags":I
    move/from16 v47, v6

    goto :goto_182

    .line 1615
    .end local v6    # "flags":I
    .restart local v7    # "flags":I
    :cond_180
    move/from16 v47, v7

    .line 1615
    .end local v7    # "flags":I
    .local v47, "flags":I
    :goto_182
    new-instance v50, Landroid/content/pm/ShortcutInfo;

    const/4 v11, 0x0

    .line 1620
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/Intent;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, [Landroid/content/Intent;

    move-object/from16 v6, v50

    move/from16 v7, p2

    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, v32

    move-object/from16 v12, v33

    move/from16 v51, v13

    move/from16 v13, v34

    .end local v13    # "iconResId":I
    .local v51, "iconResId":I
    move/from16 v52, v14

    move-object/from16 v14, v35

    .line 1620
    .end local v14    # "rank":I
    .local v52, "rank":I
    move-object/from16 v53, v15

    move-object/from16 v15, v36

    .line 1620
    .end local v15    # "intentLegacy":Landroid/content/Intent;
    .local v53, "intentLegacy":Landroid/content/Intent;
    move/from16 v16, v37

    move-object/from16 v17, v38

    move-object/from16 v18, v39

    move/from16 v19, v40

    move-object/from16 v20, v41

    move-object/from16 v21, v4

    move/from16 v23, v52

    move-object/from16 v24, v3

    move-wide/from16 v25, v42

    move/from16 v27, v47

    move/from16 v28, v51

    move-object/from16 v29, v44

    move-object/from16 v30, v45

    move/from16 v31, v46

    invoke-direct/range {v6 .. v31}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I)V

    .line 1615
    return-object v50

    nop

    nop

    :sswitch_data_1cc
    .sparse-switch
        -0x4cd5119d -> :sswitch_ea
        -0x468ec964 -> :sswitch_e0
        -0x3e3f454c -> :sswitch_d5
        -0x3d122a63 -> :sswitch_ca
        0x4d47461c -> :sswitch_c0
    .end sparse-switch

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_154
        :pswitch_144
        :pswitch_13b
        :pswitch_136
        :pswitch_102
    .end packed-switch
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 851
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 854
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 855
    .local v1, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-ltz v2, :cond_2c

    .line 856
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 858
    .local v3, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 859
    if-nez v1, :cond_22

    .line 860
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v4

    .line 862
    :cond_22
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v3    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 867
    .end local v2    # "i":I
    :cond_2c
    if-eqz p1, :cond_94

    .line 868
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 870
    .local v2, "newListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v2, :cond_94

    .line 871
    const/4 v0, 0x1

    .line 873
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 874
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 876
    .local v5, "newDisabled":Z
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 879
    .local v7, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v8, 0x0

    .line 881
    .local v8, "wasPinned":Z
    if-eqz v7, :cond_82

    .line 882
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v9

    if-nez v9, :cond_77

    .line 883
    const-string v9, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Shortcut with ID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    goto :goto_91

    .line 888
    :cond_77
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_82

    .line 889
    const/4 v8, 0x1

    .line 890
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 893
    :cond_82
    if-eqz v5, :cond_87

    if-nez v8, :cond_87

    .line 897
    goto :goto_91

    .line 902
    :cond_87
    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 904
    if-nez v5, :cond_91

    if-eqz v1, :cond_91

    .line 906
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 870
    .end local v4    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "newDisabled":Z
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v8    # "wasPinned":Z
    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 912
    .end local v2    # "newListSize":I
    .end local v3    # "i":I
    :cond_94
    if-eqz v1, :cond_b5

    .line 918
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9c
    if-ltz v2, :cond_b2

    .line 919
    const/4 v0, 0x1

    .line 921
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 923
    .local v3, "id":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V

    .line 918
    .end local v3    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 927
    .end local v2    # "i":I
    :cond_b2
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 929
    :cond_b5
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 930
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .registers 11

    .line 938
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 939
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 941
    .local v1, "maxShortcuts":I
    const/4 v2, 0x0

    .line 943
    .local v2, "changed":Z
    nop

    .line 944
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 945
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "outer":I
    :goto_14
    if-ltz v4, :cond_4e

    .line 946
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 947
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v1, :cond_23

    .line 948
    goto :goto_4b

    .line 951
    :cond_23
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 954
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "inner":I
    :goto_2d
    if-lt v7, v1, :cond_4b

    .line 955
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 957
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 960
    const-string v9, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 961
    goto :goto_48

    .line 963
    :cond_41
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;Z)Z

    .line 954
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :goto_48
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 945
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "inner":I
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 967
    .end local v4    # "outer":I
    :cond_4e
    return v2
.end method

.method private removeOrphans()V
    .registers 5

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2c

    .line 299
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 301
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1a

    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    goto :goto_29

    .line 303
    .restart local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_1a
    if-nez v0, :cond_22

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 306
    :cond_22
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 308
    .end local v1    # "i":I
    :cond_2c
    if-eqz v0, :cond_42

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_34
    if-ltz v1, :cond_42

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 313
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method private saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 14
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "forBackup"    # Z
    .param p4, "appSupportsBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1367
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    if-eqz p3, :cond_13

    .line 1368
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1372
    :cond_12
    return-void

    .line 1375
    :cond_13
    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    if-eqz p4, :cond_19

    goto :goto_1b

    :cond_19
    move v2, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    .line 1381
    .local v2, "shouldBackupDetails":Z
    :goto_1c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1382
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    .line 1384
    :cond_25
    const-string/jumbo v3, "shortcut"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1385
    const-string v3, "id"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1387
    const-string v3, "activity"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1389
    const-string/jumbo v3, "title"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1390
    const-string/jumbo v3, "titleid"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1391
    const-string/jumbo v3, "titlename"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1392
    const-string/jumbo v3, "text"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1393
    const-string/jumbo v3, "textid"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1394
    const-string/jumbo v3, "textname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1395
    if-eqz v2, :cond_9a

    .line 1396
    const-string v3, "dmessage"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1397
    const-string v3, "dmessageid"

    .line 1398
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v5

    int-to-long v5, v5

    .line 1397
    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1399
    const-string v3, "dmessagename"

    .line 1400
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v5

    .line 1399
    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1402
    :cond_9a
    const-string v3, "disabled-reason"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1403
    const-string/jumbo v3, "timestamp"

    .line 1404
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v5

    .line 1403
    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1405
    if-eqz p3, :cond_d0

    .line 1408
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x80e

    .line 1412
    .local v3, "flags":I
    const-string v5, "flags"

    int-to-long v6, v3

    invoke-static {p1, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v5

    .line 1416
    .local v5, "packageVersionCode":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_cf

    .line 1417
    const-string v7, "Package version code should be available at this point."

    invoke-virtual {v0, v7}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1420
    .end local v3    # "flags":I
    .end local v5    # "packageVersionCode":J
    :cond_cf
    goto :goto_101

    .line 1423
    :cond_d0
    const-string/jumbo v3, "rank"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1425
    const-string v3, "flags"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1426
    const-string v3, "icon-res"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1427
    const-string v3, "icon-resname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1428
    const-string v3, "bitmap-path"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1431
    :goto_101
    if-eqz v2, :cond_15a

    .line 1433
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 1434
    .local v3, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_12a

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_12a

    .line 1435
    const-string v5, "categories"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const-string v6, "categories"

    invoke-static {v5, v6, p1}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1438
    const-string v5, "categories"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    .end local v3    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12a
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v3

    .line 1442
    .local v3, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1443
    .local v5, "intentsExtras":[Landroid/os/PersistableBundle;
    array-length v6, v3

    .line 1444
    .local v6, "numIntents":I
    nop

    .line 1444
    .local v1, "i":I
    :goto_134
    if-ge v1, v6, :cond_151

    .line 1445
    const-string v7, "intent"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1446
    const-string v7, "intent-base"

    aget-object v8, v3, v1

    invoke-static {p1, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1447
    const-string v7, "extras"

    aget-object v8, v5, v1

    invoke-static {p1, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1448
    const-string v7, "intent"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_134

    .line 1451
    .end local v1    # "i":I
    :cond_151
    const-string v1, "extras"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-static {p1, v1, v7}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1454
    .end local v3    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v5    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v6    # "numIntents":I
    :cond_15a
    const-string/jumbo v1, "shortcut"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1455
    return-void
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 998
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1000
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1000
    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_46

    .line 1001
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1002
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1003
    goto :goto_43

    .line 1006
    :cond_1e
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1007
    .local v3, "activity":Landroid/content/ComponentName;
    if-nez v3, :cond_2f

    .line 1008
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v5, "null activity detected."

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1009
    goto :goto_43

    .line 1012
    :cond_2f
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1013
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez v4, :cond_40

    .line 1014
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 1015
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_40
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "activity":Landroid/content/ComponentName;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1019
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1764
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1766
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 1767
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1768
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_4f

    .line 1769
    const/4 v0, 0x1

    .line 1770
    const-string v3, "ShortcutService.verify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but expected to be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1770
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1774
    .end local v1    # "i":I
    :cond_52
    return v0
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 265
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 274
    .local v0, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_1d

    .line 275
    const/4 v1, 0x0

    .local v1, "wasPinned":Z
    goto :goto_25

    .line 279
    .end local v1    # "wasPinned":Z
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 281
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    .line 285
    .restart local v1    # "wasPinned":Z
    :goto_25
    if-eqz v1, :cond_2b

    .line 286
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 289
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 290
    return-void
.end method

.method public adjustRanks()V
    .registers 14

    .line 1179
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1180
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1183
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_10
    const/4 v4, 0x0

    if-ltz v3, :cond_30

    .line 1184
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1185
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1186
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 1187
    invoke-virtual {v5, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1188
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1183
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1197
    .end local v3    # "i":I
    :cond_30
    nop

    .line 1198
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1199
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "outer":I
    :goto_3b
    if-ltz v5, :cond_7f

    .line 1200
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1203
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1205
    const/4 v7, 0x0

    .line 1207
    .local v7, "rank":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1208
    .local v8, "size":I
    move v9, v7

    move v7, v4

    .local v7, "i":I
    .local v9, "rank":I
    :goto_4f
    if-ge v7, v8, :cond_7c

    .line 1209
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 1210
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 1212
    goto :goto_79

    .line 1215
    :cond_5e
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v11

    if-nez v11, :cond_6a

    .line 1216
    const-string v11, "Non-dynamic shortcut found."

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1217
    goto :goto_79

    .line 1219
    :cond_6a
    add-int/lit8 v11, v9, 0x1

    .line 1220
    .local v9, "thisRank":I
    .local v11, "rank":I
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v12

    if-eq v12, v9, :cond_78

    .line 1221
    invoke-virtual {v10, v1, v2}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1222
    invoke-virtual {v10, v9}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1208
    .end local v9    # "thisRank":I
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_78
    move v9, v11

    .end local v11    # "rank":I
    .local v9, "rank":I
    :goto_79
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 1199
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "size":I
    .end local v9    # "rank":I
    :cond_7c
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 1226
    .end local v5    # "outer":I
    :cond_7f
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllImplicitRanks()V
    .registers 3

    .line 1140
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1141
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1142
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    .line 1140
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1144
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public deleteAllDynamicShortcuts(Z)V
    .registers 9
    .param p1, "ignoreInvisible"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 321
    .local v0, "now":J
    const/4 v2, 0x0

    .line 322
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_37

    .line 323
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 324
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_34

    if-eqz p1, :cond_29

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 325
    :cond_29
    const/4 v2, 0x1

    .line 327
    invoke-virtual {v5, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 328
    invoke-virtual {v5, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 329
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 322
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 332
    .end local v3    # "i":I
    :cond_37
    if-eqz v2, :cond_3c

    .line 333
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 335
    :cond_3c
    return-void
.end method

.method public deleteDynamicWithId(Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 345
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 348
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .registers 13
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z
    .param p5, "ignoreInvisible"    # Z
    .param p6, "disabledReason"    # I

    .line 373
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZI)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 376
    .local v0, "disabled":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_1e

    .line 377
    if-eqz p2, :cond_12

    .line 378
    invoke-virtual {v0, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_1e

    .line 379
    :cond_12
    if-eqz p3, :cond_1e

    .line 380
    invoke-virtual {v0, p3}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 382
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 385
    :cond_1e
    :goto_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 1240
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1242
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    const-string v0, "  UID: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1247
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    const-string v0, "Calls: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1253
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    const-string v1, "Last known FG: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1260
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1265
    const-string v1, "Last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1267
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1274
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    const-string v1, "  Shortcuts:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    const-wide/16 v1, 0x0

    .line 1277
    .local v1, "totalBitmapSize":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1278
    .local v3, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1279
    .local v4, "size":I
    nop

    .local v0, "i":I
    :goto_9b
    if-ge v0, v4, :cond_e2

    .line 1280
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1281
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_df

    .line 1283
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1284
    .local v6, "len":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    const-string v8, "      "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    const-string v8, "bitmap size="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1289
    add-long/2addr v1, v6

    .line 1279
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "len":J
    :cond_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 1292
    .end local v0    # "i":I
    :cond_e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    const-string v0, "Total bitmap size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1296
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 15
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1303
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 1305
    .local v0, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1306
    .local v1, "numDynamic":I
    const/4 v2, 0x0

    .line 1307
    .local v2, "numPinned":I
    const/4 v3, 0x0

    .line 1308
    .local v3, "numManifest":I
    const/4 v4, 0x0

    .line 1309
    .local v4, "numBitmaps":I
    const-wide/16 v5, 0x0

    .line 1311
    .local v5, "totalBitmapSize":J
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1312
    .local v7, "shortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1313
    .local v8, "size":I
    const/4 v9, 0x0

    .line 1313
    .local v9, "i":I
    :goto_11
    if-ge v9, v8, :cond_4a

    .line 1314
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 1316
    .local v10, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v11

    if-eqz v11, :cond_21

    add-int/lit8 v1, v1, 0x1

    .line 1317
    :cond_21
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v11

    if-eqz v11, :cond_29

    add-int/lit8 v3, v3, 0x1

    .line 1318
    :cond_29
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_31

    add-int/lit8 v2, v2, 0x1

    .line 1320
    :cond_31
    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_47

    .line 1321
    add-int/lit8 v4, v4, 0x1

    .line 1322
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v5, v11

    .line 1313
    .end local v10    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 1326
    .end local v9    # "i":I
    :cond_4a
    const-string v9, "dynamic"

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1327
    const-string/jumbo v9, "manifest"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1328
    const-string/jumbo v9, "pinned"

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    const-string v9, "bitmaps"

    invoke-virtual {v0, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1330
    const-string v9, "bitmapBytes"

    invoke-virtual {v0, v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1334
    return-object v0
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 429
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_17

    .line 430
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 431
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 434
    :cond_17
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 12
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1048
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1053
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1054
    .local v1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_12
    if-ltz v2, :cond_3c

    .line 1055
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1057
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1058
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_39

    .line 1059
    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_39

    if-eqz p2, :cond_39

    .line 1060
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1054
    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 1064
    .end local v2    # "i":I
    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_41
    if-ltz v2, :cond_8c

    .line 1065
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1066
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1067
    .local v5, "newActivity":Landroid/content/ComponentName;
    const/4 v6, 0x2

    if-nez v5, :cond_58

    .line 1068
    if-eq p2, v6, :cond_89

    .line 1069
    const-string v6, "Activity must not be null at this point"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1070
    goto :goto_89

    .line 1075
    :cond_58
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 1076
    .local v7, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_6d

    .line 1077
    if-ne p2, v6, :cond_69

    .line 1078
    goto :goto_89

    .line 1082
    :cond_69
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1083
    goto :goto_89

    .line 1085
    :cond_6d
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_76

    if-ne p2, v6, :cond_76

    .line 1087
    goto :goto_89

    .line 1093
    :cond_76
    if-eqz p2, :cond_86

    .line 1094
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1095
    .local v6, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_86

    .line 1096
    const/4 v8, -0x1

    invoke-direct {p0, v1, v6, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1099
    .end local v6    # "oldActivity":Landroid/content/ComponentName;
    :cond_86
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1064
    .end local v4    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "newActivity":Landroid/content/ComponentName;
    .end local v7    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_41

    .line 1103
    .end local v2    # "i":I
    :cond_8c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_91
    if-ltz v2, :cond_a3

    .line 1104
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1103
    add-int/lit8 v2, v2, -0x1

    goto :goto_91

    .line 1106
    .end local v2    # "i":I
    :cond_a3
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 224
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 227
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 217
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 220
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 213
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 11
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 573
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 574
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .registers 16
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 586
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 588
    return-void

    .line 591
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 594
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    if-nez p4, :cond_13

    const/4 v1, 0x0

    goto :goto_28

    .line 596
    :cond_13
    nop

    .line 595
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {v0, p4, v1, p5}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 596
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 598
    .local v1, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_28
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_2a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 599
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 604
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz p4, :cond_4b

    if-eqz v1, :cond_49

    .line 605
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_4b

    :cond_49
    move v5, v2

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v5, 0x1

    .line 607
    .local v5, "isPinnedByCaller":Z
    :goto_4c
    if-nez p6, :cond_57

    .line 608
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 609
    if-nez v5, :cond_57

    .line 610
    goto :goto_73

    .line 614
    :cond_57
    invoke-virtual {v4, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    .line 619
    .local v6, "clone":Landroid/content/pm/ShortcutInfo;
    const/4 v7, 0x2

    if-nez p6, :cond_63

    .line 620
    if-nez v5, :cond_63

    .line 621
    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 624
    :cond_63
    if-eqz p2, :cond_6b

    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 625
    :cond_6b
    if-nez v5, :cond_70

    .line 626
    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 628
    :cond_70
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "isPinnedByCaller":Z
    .end local v6    # "clone":Landroid/content/pm/ShortcutInfo;
    :cond_73
    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 631
    .end local v3    # "i":I
    :cond_76
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1657
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getApiCallCount(Z)I
    .registers 11
    .param p1, "unlimited"    # Z

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 500
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 502
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    if-eqz p1, :cond_23

    .line 504
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 505
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 512
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 514
    .local v1, "last":J
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 515
    .local v3, "now":J
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_46

    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_46

    .line 516
    const-string v5, "ShortcutService"

    const-string v7, "Clock rewound"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 519
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 520
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5

    .line 524
    :cond_46
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v1

    if-gez v5, :cond_50

    .line 529
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 530
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 532
    :cond_50
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getOwnerUserId()I
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 152
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method public getShortcutCount()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getUsedBitmapFiles()Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 643
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_31

    .line 644
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 645
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 646
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 649
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method public hasNonManifestShortcuts()Z
    .registers 5

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1231
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1232
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1233
    return v1

    .line 1230
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1236
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 194
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 199
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method protected onRestored(I)V
    .registers 5
    .param p1, "restoreBlockReason"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 171
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 172
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 174
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 175
    if-eqz p1, :cond_21

    .line 176
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 170
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 181
    .end local v0    # "i":I
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 182
    return-void
.end method

.method public refreshPinnedFlags()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_19

    .line 458
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 457
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 462
    .end local v0    # "i":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 484
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()V

    .line 485
    return-void
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .registers 24
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    move-object/from16 v1, p0

    .line 706
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 707
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v4

    .line 711
    .local v4, "start":J
    const/16 v6, 0xe

    :try_start_c
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v8

    .line 711
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_17a

    .line 713
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x0

    if-nez v0, :cond_24

    .line 714
    nop

    .line 735
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 714
    return v7

    .line 717
    :cond_24
    if-nez p1, :cond_51

    if-nez p2, :cond_51

    .line 728
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_51

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v9

    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_51

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result v9
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_17a

    if-eqz v9, :cond_51

    .line 731
    nop

    .line 735
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 731
    return v7

    .line 735
    :cond_51
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 736
    nop

    .line 735
    move-object v6, v0

    .line 739
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    move-object v9, v0

    .line 741
    .local v9, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_58
    iget-object v0, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v11

    .line 741
    invoke-static {v0, v10, v11}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_68} :catch_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_68} :catch_6a

    move-object v9, v0

    .line 745
    goto :goto_72

    .line 743
    :catch_6a
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "ShortcutService"

    const-string v11, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_72
    if-nez v9, :cond_76

    .line 747
    move v0, v7

    goto :goto_7a

    :cond_76
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 752
    .local v0, "manifestShortcutSize":I
    :goto_7a
    if-eqz p1, :cond_7f

    if-nez v0, :cond_7f

    .line 757
    return v7

    .line 765
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v10

    .line 770
    .local v10, "newVersionCode":J
    iget-object v12, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 770
    .local v12, "i":I
    :goto_96
    if-ltz v12, :cond_de

    .line 771
    iget-object v14, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    .line 772
    .local v14, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v15

    const/16 v7, 0x64

    if-eq v15, v7, :cond_ac

    .line 773
    nop

    .line 770
    .end local v0    # "manifestShortcutSize":I
    .end local v14    # "si":Landroid/content/pm/ShortcutInfo;
    .local v19, "manifestShortcutSize":I
    :goto_a9
    move/from16 v19, v0

    goto :goto_d7

    .line 775
    .end local v19    # "manifestShortcutSize":I
    .restart local v0    # "manifestShortcutSize":I
    .restart local v14    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v17

    cmp-long v7, v17, v10

    if-lez v7, :cond_b9

    .line 780
    goto :goto_a9

    .line 782
    :cond_b9
    const-string v7, "ShortcutService"

    const-string v15, "Restoring shortcut: %s"

    move/from16 v19, v0

    new-array v0, v13, [Ljava/lang/Object;

    .line 782
    .end local v0    # "manifestShortcutSize":I
    .restart local v19    # "manifestShortcutSize":I
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v17

    const/4 v13, 0x0

    aput-object v17, v0, v13

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v0, 0x40

    invoke-virtual {v14, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 784
    invoke-virtual {v14, v13}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 770
    .end local v14    # "si":Landroid/content/pm/ShortcutInfo;
    :goto_d7
    add-int/lit8 v12, v12, -0x1

    move/from16 v0, v19

    const/4 v7, 0x0

    const/4 v13, 0x1

    goto :goto_96

    .line 789
    .end local v12    # "i":I
    .end local v19    # "manifestShortcutSize":I
    .restart local v0    # "manifestShortcutSize":I
    :cond_de
    move/from16 v19, v0

    .line 789
    .end local v0    # "manifestShortcutSize":I
    .restart local v19    # "manifestShortcutSize":I
    if-nez p1, :cond_162

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "publisherRes":Landroid/content/res/Resources;
    iget-object v7, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    .line 792
    .local v7, "i":I
    :goto_eb
    if-ltz v7, :cond_162

    .line 793
    iget-object v12, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutInfo;

    .line 796
    .local v12, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v13

    if-eqz v13, :cond_13f

    .line 797
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_108

    .line 799
    const-string/jumbo v13, "null activity detected."

    invoke-virtual {v3, v13}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_13f

    .line 801
    :cond_108
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v13

    if-nez v13, :cond_13f

    .line 802
    const-string v13, "ShortcutService"

    const-string v14, "%s is no longer main activity. Disabling shorcut %s."

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    aput-object v17, v2, v15

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v2, v17

    .line 802
    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x2

    invoke-direct {v1, v2, v15, v13}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 807
    goto :goto_15f

    .line 813
    :cond_13f
    :goto_13f
    const/4 v15, 0x0

    :cond_140
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 814
    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v2

    if-nez v2, :cond_158

    .line 815
    if-nez v0, :cond_155

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 817
    if-nez v0, :cond_155

    .line 818
    goto :goto_162

    .line 825
    :cond_155
    invoke-virtual {v12, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 827
    :cond_158
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 792
    .end local v12    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_15f
    :goto_15f
    add-int/lit8 v7, v7, -0x1

    goto :goto_eb

    .line 833
    .end local v0    # "publisherRes":Landroid/content/res/Resources;
    .end local v7    # "i":I
    :cond_162
    :goto_162
    invoke-direct {v1, v9}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    .line 835
    if-eqz v9, :cond_16a

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 839
    :cond_16a
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 843
    const/4 v0, 0x1

    return v0

    .line 735
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v10    # "newVersionCode":J
    .end local v19    # "manifestShortcutSize":I
    :catchall_17a
    move-exception v0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v0
.end method

.method public resetRateLimiting()V
    .registers 3

    .line 557
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_12

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 561
    :cond_12
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .registers 3

    .line 564
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 566
    return-void
.end method

.method public resetThrottling()V
    .registers 2

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 635
    return-void
.end method

.method public resolveResourceStrings()V
    .registers 8

    .line 1112
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1113
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x0

    .line 1115
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 1116
    .local v2, "publisherRes":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_35

    .line 1117
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1119
    .local v4, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1120
    const/4 v1, 0x1

    .line 1122
    if-nez v2, :cond_28

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1124
    if-nez v2, :cond_28

    .line 1125
    goto :goto_35

    .line 1129
    :cond_28
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1130
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1116
    .end local v4    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 1133
    .end local v3    # "i":I
    :cond_35
    :goto_35
    if-eqz v1, :cond_42

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 1136
    :cond_42
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1342
    .local v0, "size":I
    if-nez v0, :cond_d

    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v1, :cond_d

    .line 1343
    return-void

    .line 1346
    :cond_d
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    const-string/jumbo v1, "name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1349
    const-string v1, "call-count"

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v3, v3

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1350
    const-string/jumbo v1, "last-reset"

    iget-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1353
    const/4 v1, 0x0

    .line 1353
    .local v1, "j":I
    :goto_3a
    if-ge v1, v0, :cond_52

    .line 1354
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v4

    .line 1354
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1353
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1358
    .end local v1    # "j":I
    :cond_52
    const-string/jumbo v1, "package"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1359
    return-void
.end method

.method public tryApiCall(Z)Z
    .registers 5
    .param p1, "unlimited"    # Z

    .line 543
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 545
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_e

    .line 546
    const/4 v1, 0x0

    return v1

    .line 548
    :cond_e
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 549
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 550
    return v2
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 438
    .local v0, "source":Landroid/content/pm/ShortcutInfo;
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 442
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 444
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 447
    return-void
.end method

.method public verifyStates()V
    .registers 11

    .line 1662
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 1664
    const/4 v0, 0x0

    .line 1666
    .local v0, "failed":Z
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1668
    .local v1, "s":Lcom/android/server/pm/ShortcutService;
    nop

    .line 1669
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    .line 1672
    .local v2, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "outer":I
    :goto_13
    if-ltz v3, :cond_89

    .line 1673
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1674
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v7, v7, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v7

    if-le v6, v7, :cond_67

    .line 1675
    const/4 v0, 0x1

    .line 1676
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " shortcuts."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1676
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_67
    sget-object v6, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$DImOsVxMicPEAJPTxf_RRXuc70I;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1684
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1685
    .local v6, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v7, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$Uf55CaKs9xv-osb2umPmXq3W2lM;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1687
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1688
    .local v7, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    sget-object v8, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutPackage$9YSAfuJJkDxYR6ZL5AWyxpKsC_Y;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1690
    invoke-direct {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1691
    invoke-direct {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 1672
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 1695
    .end local v3    # "outer":I
    :cond_89
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_90
    if-ltz v3, :cond_331

    .line 1696
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1697
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v6

    if-nez v6, :cond_d8

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_d8

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v6

    if-nez v6, :cond_d8

    .line 1698
    const/4 v0, 0x1

    .line 1699
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not manifest, dynamic or pinned."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_d8
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v6

    if-eqz v6, :cond_110

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_110

    .line 1703
    const/4 v0, 0x1

    .line 1704
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is both dynamic and manifest at the same time."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_110
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_148

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-nez v6, :cond_148

    .line 1708
    const/4 v0, 0x1

    .line 1709
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has null activity, but not floating."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_148
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_154

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v6

    if-eqz v6, :cond_186

    :cond_154
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_186

    .line 1713
    const/4 v0, 0x1

    .line 1714
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not floating, but is disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_186
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_1c5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    if-eqz v6, :cond_1c5

    .line 1718
    const/4 v0, 0x1

    .line 1719
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is floating, but has rank="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1719
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_1c5
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-eqz v6, :cond_1f7

    .line 1723
    const/4 v0, 0x1

    .line 1724
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " still has an icon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_1f7
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v6

    if-eqz v6, :cond_22f

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v6

    if-nez v6, :cond_22f

    .line 1728
    const/4 v0, 0x1

    .line 1729
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has adaptive bitmap but was not saved to a file."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_22f
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v6

    if-eqz v6, :cond_267

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v6

    if-eqz v6, :cond_267

    .line 1733
    const/4 v0, 0x1

    .line 1734
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has both resource and bitmap icons"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_267
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    .line 1738
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v7

    if-nez v7, :cond_273

    move v7, v4

    goto :goto_274

    :cond_273
    const/4 v7, 0x0

    :goto_274
    if-eq v6, v7, :cond_2b5

    .line 1739
    const/4 v0, 0x1

    .line 1740
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1740
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_2b5
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2f7

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2f7

    .line 1747
    const/4 v0, 0x1

    .line 1748
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_2f7
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_32d

    .line 1752
    const/4 v0, 0x1

    .line 1753
    const-string v6, "ShortcutService.verify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has a dummy target activity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_32d
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_90

    .line 1758
    .end local v3    # "i":I
    :cond_331
    if-nez v0, :cond_334

    .line 1761
    return-void

    .line 1759
    :cond_334
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "See logcat for errors"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

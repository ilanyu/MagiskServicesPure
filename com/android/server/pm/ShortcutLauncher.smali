.class Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field private static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PIN:Ljava/lang/String; = "pin"

.field static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field private final mOwnerUserId:I

.field private final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .registers 11
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 7
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I
    .param p5, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 70
    nop

    .line 71
    if-eqz p5, :cond_5

    .line 70
    move-object v0, p5

    goto :goto_9

    .line 71
    :cond_5
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    .line 70
    :goto_9
    invoke-direct {p0, p1, p4, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 72
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 73
    return-void
.end method

.method public static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .registers 21
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 262
    move/from16 v2, p3

    const-string/jumbo v3, "package-name"

    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "launcherPackageName":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 268
    move v4, v1

    goto :goto_18

    :cond_11
    const-string/jumbo v4, "launcher-user"

    invoke-static {v0, v4, v1}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 270
    .local v4, "launcherUserId":I
    :goto_18
    new-instance v5, Lcom/android/server/pm/ShortcutLauncher;

    move-object/from16 v6, p1

    invoke-direct {v5, v6, v1, v3, v4}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 273
    .local v5, "ret":Lcom/android/server/pm/ShortcutLauncher;
    const/4 v7, 0x0

    .line 274
    .local v7, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 276
    .local v8, "outerDepth":I
    :goto_24
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .line 276
    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_d7

    const/4 v9, 0x3

    if-ne v10, v9, :cond_35

    .line 277
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v8, :cond_d7

    .line 278
    :cond_35
    const/4 v9, 0x2

    if-eq v10, v9, :cond_39

    .line 279
    goto :goto_24

    .line 281
    :cond_39
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 282
    .local v9, "depth":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 283
    .local v12, "tag":Ljava/lang/String;
    add-int/lit8 v13, v8, 0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-ne v9, v13, :cond_9e

    .line 284
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v11, -0x72a5f22b

    if-eq v13, v11, :cond_62

    const v11, -0x301acbba

    if-eq v13, v11, :cond_56

    goto :goto_6e

    :cond_56
    const-string/jumbo v11, "package"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    const/16 v16, 0x1

    goto :goto_70

    :cond_62
    const-string/jumbo v11, "package-info"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    move/from16 v16, v14

    goto :goto_70

    :cond_6e
    :goto_6e
    move/from16 v16, v15

    :goto_70
    packed-switch v16, :pswitch_data_da

    goto :goto_9e

    .line 289
    :pswitch_74
    const-string/jumbo v11, "package-name"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_7f

    .line 292
    move v13, v1

    goto :goto_86

    :cond_7f
    const-string/jumbo v13, "package-user"

    invoke-static {v0, v13, v1}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 294
    .local v13, "packageUserId":I
    :goto_86
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v14

    .line 295
    iget-object v14, v5, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 296
    invoke-static {v13, v11}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v15

    .line 295
    invoke-virtual {v14, v15, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    goto :goto_24

    .line 286
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "packageUserId":I
    :pswitch_96
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v11

    invoke-virtual {v11, v0, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 287
    goto :goto_24

    .line 301
    :cond_9e
    :goto_9e
    add-int/lit8 v11, v8, 0x2

    if-ne v9, v11, :cond_d2

    .line 302
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v13, 0x1b195

    if-eq v11, v13, :cond_ac

    goto :goto_b6

    :cond_ac
    const-string/jumbo v11, "pin"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b6

    goto :goto_b7

    :cond_b6
    :goto_b6
    move v14, v15

    :goto_b7
    if-eqz v14, :cond_ba

    goto :goto_d2

    .line 304
    :cond_ba
    if-nez v7, :cond_c6

    .line 305
    const-string v11, "ShortcutService"

    const-string/jumbo v13, "pin in invalid place"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 307
    :cond_c6
    const-string/jumbo v11, "value"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    goto/16 :goto_24

    .line 313
    :cond_d2
    :goto_d2
    invoke-static {v9, v12}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 314
    .end local v9    # "depth":I
    .end local v12    # "tag":Ljava/lang/String;
    goto/16 :goto_24

    .line 315
    :cond_d7
    return-object v5

    nop

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_96
        :pswitch_74
    .end packed-switch
.end method

.method private onRestoreBlocked()V
    .registers 6

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 97
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v0, "pinnedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_2e

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 101
    .local v2, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    .line 102
    .local v3, "p":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v3, :cond_2b

    .line 103
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 99
    .end local v2    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .end local v3    # "p":Lcom/android/server/pm/ShortcutPackage;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 106
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method


# virtual methods
.method public addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "forPinRequest"    # Z

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 190
    .local v0, "pinnedSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 192
    .local v1, "pinnedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    .line 194
    .end local v1    # "pinnedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 196
    .restart local v1    # "pinnedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1c
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0, p2, p1, v1, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 199
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 319
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string v0, "Launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v0, "  Package user: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 326
    const-string v0, "  Owner user: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 328
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 334
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_50
    if-ge v2, v0, :cond_a2

    .line 335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 337
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 339
    .local v3, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    const-string v4, "Package: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v4, "  User: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget v4, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 346
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 347
    .local v4, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 349
    .local v5, "idSize":I
    move v6, v1

    .local v6, "j":I
    :goto_86
    if-ge v6, v5, :cond_9f

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    const-string v7, "    Pinned: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 349
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 334
    .end local v3    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .end local v4    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "idSize":I
    .end local v6    # "j":I
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 356
    .end local v2    # "i":I
    :cond_a2
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 3
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 360
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    .local v0, "result":Lorg/json/JSONObject;
    return-object v0
.end method

.method public ensurePackageInfo()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 207
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 208
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2d

    .line 209
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 213
    return-void
.end method

.method getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public getOwnerUserId()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return v0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 178
    nop

    .line 179
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 180
    .local v0, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method protected onRestored(I)V
    .registers 2
    .param p1, "restoreBlockReason"    # I

    .line 114
    if-eqz p1, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutLauncher;->onRestoreBlocked()V

    .line 117
    :cond_5
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V
    .registers 14
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "forPinRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 124
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 126
    .local v0, "packageShortcuts":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_9

    .line 127
    return-void

    .line 130
    :cond_9
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    .line 132
    .local v1, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 133
    .local v2, "idSize":I
    if-nez v2, :cond_19

    .line 134
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 136
    :cond_19
    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 145
    .local v3, "prevSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 147
    .local v4, "newSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    if-ge v5, v2, :cond_52

    .line 148
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 150
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_36

    .line 151
    goto :goto_4f

    .line 153
    :cond_36
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_4c

    .line 154
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-nez v8, :cond_4c

    if-eqz v3, :cond_4a

    .line 155
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    :cond_4a
    if-eqz p4, :cond_4f

    .line 157
    :cond_4c
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_4f
    :goto_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 160
    .end local v5    # "i":I
    :cond_52
    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v3    # "prevSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "newSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_57
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 163
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 13
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 223
    return-void

    .line 225
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 226
    .local v0, "size":I
    if-nez v0, :cond_16

    .line 227
    return-void

    .line 230
    :cond_16
    const-string/jumbo v1, "launcher-pins"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const-string/jumbo v1, "package-name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 232
    const-string/jumbo v1, "launcher-user"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 235
    const/4 v1, 0x0

    move v3, v1

    .line 235
    .local v3, "i":I
    :goto_3f
    if-ge v3, v0, :cond_92

    .line 236
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 238
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    if-eqz p2, :cond_54

    iget v5, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v6

    if-eq v5, v6, :cond_54

    .line 239
    goto :goto_8f

    .line 242
    :cond_54
    const-string/jumbo v5, "package"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string/jumbo v5, "package-name"

    iget-object v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 244
    const-string/jumbo v5, "package-user"

    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    int-to-long v6, v6

    invoke-static {p1, v5, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 246
    iget-object v5, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 247
    .local v5, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 248
    .local v6, "idSize":I
    move v7, v1

    .line 248
    .local v7, "j":I
    :goto_78
    if-ge v7, v6, :cond_89

    .line 249
    const-string/jumbo v8, "pin"

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .line 251
    .end local v7    # "j":I
    :cond_89
    const-string/jumbo v7, "package"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    .end local v5    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "idSize":I
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 254
    .end local v3    # "i":I
    :cond_92
    const-string/jumbo v1, "launcher-pins"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    return-void
.end method
